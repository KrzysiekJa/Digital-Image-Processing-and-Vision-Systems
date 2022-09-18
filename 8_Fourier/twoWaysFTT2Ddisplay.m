function [] = twoWaysFTT2Ddisplay(fileName)
img = imread (fileName);

imgFTT2 = fft2 (img);
imgFTT2shifted = fftshift (imgFTT2);

A = abs (imgFTT2shifted);
A = log10 (A + 1);
F = angle (imgFTT2shifted .* (A > 0.0001));

figure;
subplot (2,3,1), imshow (img, []), title ('Original');
subplot (2,3,2), imshow (A, []), title ('Amplitude fft2');
subplot (2,3,3), imshow (F, []), title ('F-image fft2');

imgFTT = fft (img,[],1);
imgTwoFTT = fft (imgFTT,[],2);
imgTwoFTTshifted = fftshift (imgTwoFTT);

A = abs (imgTwoFTTshifted);
A = log10 (A + 1);
F = angle (imgTwoFTTshifted .* (A > 0.0001));

subplot (2,3,5), imshow (A, []), title ('Amplitude 2xfft');
subplot (2,3,6), imshow (F, []), title ('F-image 2xfft');
end