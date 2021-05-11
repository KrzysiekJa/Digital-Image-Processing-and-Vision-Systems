%% morphology: opening
close all; clearvars; clc;

calculator = imread('calculator.bmp');


SE = ones(1,71);
calc_erode = imerode(calculator, SE);
calc_recon = imreconstruct(calc_erode, calculator);
calc_open  = imopen(calculator, SE);


figure(1);
subplot(2,2,1), imshow(calculator), title('original');
subplot(2,2,2), imshow(calc_erode), title('erosion');
subplot(2,2,3), imshow(calc_recon), title('reconstruction');
subplot(2,2,4), imshow(calc_open), title('openning');


%% morphology: tophat
close all; clearvars; clc;

calculator = imread('calculator.bmp');


SE = ones(1,71);
calc_erode = imerode(calculator, SE);
calc_recon = imreconstruct(calc_erode, calculator);
calc_diff  = abs(calculator - calc_recon);
calc_tophat = imtophat(calculator, SE);


figure(1);
subplot(2,2,1), imshow(calculator), title('original');
subplot(2,2,2), imshow(calc_recon), title('reconstruction');
subplot(2,2,3), imshow(calc_diff), title('reconstruction diff');
subplot(2,2,4), imshow(calc_tophat), title('top-hat');


