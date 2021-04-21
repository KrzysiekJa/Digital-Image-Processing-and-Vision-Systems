%% two thresholds
clearvars; close all; clc;

bart = imread('bart.bmp');


figure(1)
subplot(1,2,1), imshow(bart), title('original');
subplot(1,2,2), imhist(bart), title('its histogram'), ylim([0,650]);


%% implementation
clearvars; close all; clc;

bart = imread('bart.bmp');

imageBW = bart > 190 & bart < 210;


figure(1)
subplot(1,2,1), imshow(bart), title('original');
subplot(1,2,2), imshow(imageBW, []), title('binarization');


