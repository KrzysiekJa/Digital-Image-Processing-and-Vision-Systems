%% test section
clc; close all; clear;

load('functionsLUT.mat');
jet = imread('jet.bmp');

figure(1), plot(square);

figure(2), imshow(jet);

figure(3), imshow(intlut(jet, square));


%% main section
clc; close all; clear;

load('functionsLUT.mat');
lena = imread('lena.bmp');
jet  = imread('jet.bmp');

figure(1), LUT(jet, log);
figure(2), LUT(jet, square);
figure(3), LUT(jet, invlog);
figure(4), LUT(jet, inverse);
figure(5), LUT(jet, squareroot);
figure(6), LUT(jet, saw);
figure(7), LUT(jet, exponential);


