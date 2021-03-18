%% first part
clear; close all; clc;

im = imfinfo('lena.bmp');
disp(im);


%% second part
clear; close all; clc;

im = imfinfo('lena.jpg');
disp(im);


%% third part
clear; close all; clc;

figure(1);
image = imread('lena.bmp');
imshow(image);

figure(2);
gray_sc_image = rgb2gray(image);
imshow(gray_sc_image);
imwrite(gray_sc_image, 'gray_lena.bmp');

figure(3);
lena_mesh = mesh(double(gray_sc_image));

figure(4);
plot(gray_sc_image(10, :));
