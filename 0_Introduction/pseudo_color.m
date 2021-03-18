%% first part
clear; close all; clc;

image = imread('lena.bmp');
gray_sc_image = rgb2gray (image);

figure(1);
[X, map] = gray2ind (gray_sc_image, 256);
imshow (X, map);

figure(2);
map = colormap (autumn);
imshow (X, map);


%% second part - color spaces
clear; close all; clc;

image = imread ('lena.bmp');
R = image (:,:, 1);
G = image (:,:, 2);
B = image (:,:, 3);

figure (1);
subplot (2,2,1), imshow (image), title ('Original');
subplot (2,2,2), imshow (R), title ('R');
subplot (2,2,3), imshow (G), title ('G');
subplot (2,2,4), imshow (B), title ('B');


%% third part - color spaces
clear; close all; clc;

image = imread ('lena.bmp');
image_hsv = rgb2hsv (image);
H = image_hsv (:,:, 1);
S = image_hsv (:,:, 2);
V = image_hsv (:,:, 3);

figure (1);
subplot (2,2,1), imshow (image), title ('Original');
subplot (2,2,2), imshow (H), title ('H');
subplot (2,2,3), imshow (S), title ('S');
subplot (2,2,4), imshow (V), title ('V');


%% fourth part - color spaces
clear; close all; clc;

image = imread ('lena.bmp');
image_ycbcr = rgb2ycbcr (image);
Y  = image_ycbcr (:,:, 1);
Cb = image_ycbcr (:,:, 2);
Cr = image_ycbcr (:,:, 3);

figure (1);
subplot (2,2,1), imshow (image), title ('Original');
subplot (2,2,2), imshow (Y), title ('Y');
subplot (2,2,3), imshow (Cb), title ('Cb');
subplot (2,2,4), imshow (Cr), title ('Cr');


%% fifth part - color spaces
clear; close all; clc;

image = imread ('lena.bmp');
image_lab = rgb2lab (image);
L = image_lab (:,:, 1);
a = image_lab (:,:, 2);
b = image_lab (:,:, 3);

figure (1);
subplot (2,2,1), imshow (image), title ('Original');
subplot (2,2,2), imshow (L), title ('L');
subplot (2,2,3), imshow (a), title ('a');
subplot (2,2,4), imshow (b), title ('b');