%% just display
close all; clear; clc;

ftt2Ddisplay ("lena.bmp");

%% computations
close all; clear; clc;

img = imread ("lena.bmp");

imgFTT2 = fft2 (img);
imgFTT2shifted = fftshift (imgFTT2);

[f1,f2] = freqspace (512,'meshgrid');
r = sqrt (f1.^2 + f2.^2);
Hd = ones (512);
Hd((r < 0.03 | r > 0.7)) = 0;

colormap (jet(64)); mesh (f1,f2,Hd);

A = abs (imgFTT2shifted);
A = A .* Hd;    % new line
A = log10 (A + 1);
F = angle (imgFTT2shifted .* (A > 0.0001));

YN = A .* exp (sqrt (-1) .* F);

YNifft2shifted = ifftshift (YN);
outputImg = ifft2 (YNifft2shifted);

figure;
subplot (1,3,1), imshow (img, []), title ('Original');
subplot (1,3,2), imshow (F, []), title ('F-image');
subplot (1,3,3), imshow (outputImg, []), title ('Returned image');

%% Hamming, Hanning, Chebyshev filters
close all; clear; clc;

img = imread ("lena.bmp");

imgFTT2 = fft2 (img);
imgFTT2shifted = fftshift (imgFTT2);

A = abs (imgFTT2shifted);
A = log10 (A + 1);
F = angle (imgFTT2shifted .* (A > 0.0001));

[f1,f2] = freqspace (512,'meshgrid');
r = sqrt (f1.^2 + f2.^2);
Hd = ones (512);
Hd((r > 0.3)) = 0;
h = fwind1(Hd, hanning(21)); % optional: hamming, chebwin
[H, f1, f2] = freqz2(h,512,512);

colormap (jet(64)); mesh (f1,f2,H);

imgFTT2shifted = imgFTT2shifted .* H;
YNifft2shifted = ifftshift (imgFTT2shifted);
outputImg = ifft2 (YNifft2shifted);

figure;
subplot (1,3,1), imshow (img, []), title ('Original');
subplot (1,3,2), imshow (F, []), title ('F-image');
subplot (1,3,3), imshow (outputImg, []), title ('Returned image');


