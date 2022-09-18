function [] = iftt2Ddisplay(fileName)
img = imread (fileName);

imgFTT2 = fft2 (img);
imgFTT2shifted = fftshift (imgFTT2);

A = abs (imgFTT2shifted);
A = log10 (A + 1);
F = angle (imgFTT2shifted .* (A > 0.0001));

imgIFTT2shifted = ifftshift (imgFTT2shifted);
outputImg = ifft2(imgIFTT2shifted);

figure;
subplot (1,3,1), imshow (img, []), title ('Original');
subplot (1,3,2), imshow (F, []), title ('F-image');
subplot (1,3,3), imshow (outputImg, []), title ('Returned image');

end