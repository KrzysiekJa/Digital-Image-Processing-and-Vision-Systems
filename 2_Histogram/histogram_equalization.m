%% histogram equalization
clearvars; close all; clc;

hist1 = imread('hist1.bmp');
[H, x] = imhist(hist1, 256);

figure(1);
subplot(1,3,1), imshow(hist1), title('hist1');
subplot(1,3,2), imhist(hist1, 256), title('histogram'), ylim([0, 2500]);
subplot(1,3,3), bar(x, H), title('bar'), ylim([0, 2500]);


%% cumulative histogram
clearvars; close all; clc;

hist1 = imread('hist1.bmp');
[H, x] = imhist(hist1, 256);

C = cumsum(H);
k = max(C)/max(H);
C2 = C/k;


hold on;
plot(x, H), plot(x, C2), title('Histogram and cumulative h.'), xlim([0, 256]);
hold off;


%% cumulative histogram after stretching
clearvars; close all; clc;

hist1 = imadjust(imread('hist1.bmp'));
[H, x] = imhist(hist1, 256);

C = cumsum(H);
k = max(C)/max(H);
C2 = C/k;


hold on;
plot(x, H), plot(x, C2), title('Histogram and cumulative h.'), xlim([0, 256]);
hold off;


%% image after operations
clearvars; close all; clc;

hist1 = imread('hist1.bmp');
[H, x] = imhist(hist1, 256);

C = cumsum(H);
k = max(C)/255;
C2 = C/k;

lut = uint8( intlut(hist1, uint8(C2)) );


subplot(1,2,1);
hold on;
imhist(lut), plot(x, C2), title('Histogram and cumulative h.'), xlim([0, 256]), ylim([0, 2500]);
hold off;
subplot(1,2,2), imshow(lut), title('Output image');


%% methods comparison
clearvars; close all; clc;

hist1 = imread('hist1.bmp');
H = imhist(hist1, 256);

C = cumsum(H);
k = max(C)/255;
C2 = C/k;

lut = uint8( intlut(hist1, uint8(C2)) );


figure(1);
subplot(1,3,1), imshow(lut), title('own implementation');
subplot(1,3,2), imshow(histeq(hist1, 256)), title('histeq method resutl');
subplot(1,3,3), imshow(adapthisteq(hist1)), title('adapthisteq method resutl');


%% different histograms comparison
clearvars; close all; clc;

hist2 = imread('hist2.bmp');
hist3 = imread('hist3.bmp');
hist4 = imread('hist4.bmp');


H = imhist(hist2, 256);
C = cumsum(H);
k = max(C)/255;
C2 = C/k;
lut = uint8( intlut(hist2, uint8(C2)) );

subplot(3,4,1), imshow(hist2), title('hist2');
subplot(3,4,2), imshow(imadjust(hist2)), title('stretching');
subplot(3,4,3), imshow(lut), title('HE');
subplot(3,4,4), imshow(adapthisteq(hist2)), title('CLAHE');

H = imhist(hist3, 256);
C = cumsum(H);
k = max(C)/255;
C2 = C/k;
lut = uint8( intlut(hist3, uint8(C2)) );


subplot(3,4,5), imshow(hist3), title('hist3');
subplot(3,4,6), imshow(imadjust(hist3));
subplot(3,4,7), imshow(lut);
subplot(3,4,8), imshow(adapthisteq(hist3));

H = imhist(hist4, 256);
C = cumsum(H);
k = max(C)/255;
C2 = C/k;
lut = uint8( intlut(hist4, uint8(C2)) );


subplot(3,4,9),  imshow(hist4), title('hist4');
subplot(3,4,10), imshow(imadjust(hist4));
subplot(3,4,11), imshow(lut);
subplot(3,4,12), imshow(adapthisteq(hist4));

