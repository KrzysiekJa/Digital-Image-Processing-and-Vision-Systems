%% histeq result
clearvars; close all; clc;

phobos = imread('phobos.bmp');

subplot(1,2,1), imshow(phobos), title('original');
subplot(1,2,2), imshow(histeq(phobos, 256)), title('histeq method resutl');


%% hgram result
clearvars; close all; clc;

phobos = imread('phobos.bmp');
load('desiredHistogram.mat');

subplot(1,2,1), imshow(phobos), title('original');
subplot(1,2,2), imshow(histeq(phobos, desiredHistogram)), title('hgram');


%% all results
clearvars; close all; clc;

phobos = imread('phobos.bmp');
load('desiredHistogram.mat');

subplot(2,2,1), imshow(phobos), title('original');
subplot(2,2,2), imshow(histeq(phobos, desiredHistogram)), title('hgram');
subplot(2,2,3), imshow(imadjust(phobos)), title('stretching');
subplot(2,2,4), imshow(adapthisteq(phobos)), title('CLAHE');

