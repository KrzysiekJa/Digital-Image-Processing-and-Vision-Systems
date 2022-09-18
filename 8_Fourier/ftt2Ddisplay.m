function [] = ftt2Ddisplay(fileName)
img = imread (fileName);

imgFTT2 = fft2 (img);
imgFTT2shifted = fftshift (imgFTT2);

A = abs (imgFTT2shifted);
A = log10 (A + 1);
F = angle (imgFTT2shifted .* (A > 0.0001));

figure;
subplot (1,3,1), imshow (img, []), title ('Original');
subplot (1,3,2), imshow (A, []), title ('Amplitude');
subplot (1,3,3), imshow (F, []), title ('F-image');

end