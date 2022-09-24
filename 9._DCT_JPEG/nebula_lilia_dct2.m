%% fft2 and dct2 comparisone
close all; clear; clc;

nebula = imread('mglawica.png');

nebulaFft = fft2(nebula);
nebulaDct = dct2(nebula);

figure(1)
subplot(1,3,1), imshow( nebula ), title('original');
subplot(1,3,2), imshow( log10( abs(nebulaFft) + 1 ), []), title('log10 FFT');
subplot(1,3,3), imshow( log10( abs(nebulaDct) + 1 ), []), title('log10 DCT');

nebulaIdct = idct2(nebulaDct);

figure(2)
subplot(1,3,1), imshow( nebula ), title('original');
subplot(1,3,2), imshow( uint8( nebulaIdct ) ), title('DCT');
subplot(1,3,3), imshow( imabsdiff( nebula, uint8(nebulaIdct) ), []), title('difference');


%% using mask
close all; clear; clc;

lilia = imread('lilia.png');
load maska.mat

liliaFft = fft2(lilia);
liliaDct = dct2(lilia);

figure(1)
subplot(1,3,1), imshow( lilia ), title('original');
subplot(1,3,2), imshow( log10( abs(liliaFft) + 1 ), []), title('log10 FFT');
subplot(1,3,3), imshow( log10( abs(liliaDct) + 1 ), []), title('log10 DCT');

maskSize = [8 8];
lilia2Dct = blkproc(lilia, maskSize, @dct2);
reduction = @(blok_danych) maska .* blok_danych;
liliaRed = blkproc(lilia2Dct, maskSize, reduction);
liliaRed = blkproc(liliaRed, maskSize, @idct2);

figure(2)
subplot(1,3,1), imshow( lilia ), title('original');
subplot(1,3,2), imshow( uint8( liliaRed ) ), title('DCT');
subplot(1,3,3), imshow( imabsdiff( lilia, uint8(liliaRed) ), []), title('difference');

