close all; clearvars; clc;


image = zeros(11,11);
image(1,1) = 1; image(3,5) = 1; image(4,7) = 1; image(5,9) = 1; image(6,11) = 1;

H = houghLinearTrans(image, 1, 51, 1, 1, 51, 1);


plot(H), title('Linear Hough');

