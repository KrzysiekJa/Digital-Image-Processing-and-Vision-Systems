%% Hough transform for a few pixels
close all; clearvars; clc;


image = zeros(11,11);
image(1,1) = 1;
hough_sp1 = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
image(3,5) = 1;
hough_sp2 = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
image(4,7) = 1; image(5,9) = 1;
hough_sp3 = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);


subplot(1,3,1), imshow(hough_sp1, []), title('Hough space 1 px');
subplot(1,3,2), imshow(hough_sp2, []), title('Hough space 2 px');
subplot(1,3,3), imshow(hough_sp3, []), title('Hough space 4 px');


%% Hough transform result line
close all; clearvars; clc;


image = zeros(11,11);
image(1,1) = 1; image(3,5) = 1; image(4,7) = 1; image(5,9) = 1;
[H, theta, rho] = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
ox = 55; oy = 144;

rho = rho(oy);
theta = theta(ox);
x = 0:0.1:10;
y = (rho - x * cosd(theta)) / sind(theta);


figure;
imshow(image,[]);
hold on;
plot(x+1,y+1), title('The line');
hold off;


