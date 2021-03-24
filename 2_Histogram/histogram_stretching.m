%% displaying histogram
clearvars; close all; clc;

lena1 = imread('lena1.bmp');
lena2 = imread('lena2.bmp');
lena3 = imread('lena3.bmp');
lena4 = imread('lena4.bmp');
hist1 = imread('hist1.bmp');


figure(1);
subplot(2,4,1), imshow(lena1), title('lena1');
subplot(2,4,2), imshow(lena2), title('lena2');
subplot(2,4,3), imshow(lena3), title('lena3');
subplot(2,4,4), imshow(lena4), title('lena4');
subplot(2,4,5), imhist(lena1, 256), ylim([0, 2300]);
subplot(2,4,6), imhist(lena2, 256), ylim([0, 2300]);
subplot(2,4,7), imhist(lena3, 256), ylim([0, 2300]);
subplot(2,4,8), imhist(lena4, 256), ylim([0, 2300]);

figure(2);
subplot(1,2,1), imshow(hist1), title('hist1');
subplot(1,2,2), imhist(hist1, 256), title('Its hist'), ylim([0, 2500]);


%% histogram stretching
clearvars; close all; clc;

hist1 = imadjust(imread('hist1.bmp'));


figure(1);
subplot(1,2,1), imshow(hist1), title('hist1');
subplot(1,2,2), imhist(hist1, 256), title('Its histogram'), ylim([0, 2500]);



