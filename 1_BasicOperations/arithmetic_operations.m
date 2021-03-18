%% addition operation
clc; close all; clear;

lena = imread('lena.bmp');
jet  = imread('jet.bmp');

sum = imadd(lena, jet);
sum_in_uint16 = imadd(lena, jet, 'uint16');

subplot(1,4,1), imshow(lena), title('First image');
subplot(1,4,2), imshow(jet), title('Second image');
subplot(1,4,3), imshow(sum, []), title('Output image');
subplot(1,4,4), imshow(sum_in_uint16, []), title('Output uint16 type image');


%% linear combination
clc; close all; clear;

lena = imread('lena.bmp');
jet  = imread('jet.bmp');

lincomb11 = imlincomb(1, lena, 1, jet);
lincomb1_1 = imlincomb(1, lena, -1, jet);
lincomb0505 = imlincomb(.5, lena, .5, jet);
lincomb_11 = imlincomb(-1, lena, 1, jet);


subplot(2,3,1), imshow(lena), title('First image');
subplot(2,3,2), imshow(lincomb11, []), title('Output image 1:1');
subplot(2,3,3), imshow(lincomb1_1, []), title('Output image 1:-1');

subplot(2,3,4), imshow(jet), title('Second image');
subplot(2,3,5), imshow(lincomb0505, []), title('Output image 0.5:0.5');
subplot(2,3,6), imshow(lincomb_11, []), title('Output image -1:1')


%% substraction operation
clc; close all; clear;

lena = imread('lena.bmp');
jet  = imread('jet.bmp');

subtraction_8 = imsubtract(lena, jet);
subtraction_16 = imsubtract(int16(lena), int16(jet));
inv_subtraction_16 = imsubtract(int16(jet), int16(lena));
absdiff = imabsdiff(lena, jet);


subplot(2,3,1), imshow(lena), title('First image');
subplot(2,3,4), imshow(jet), title('Second image');

subplot(2,3,2), imshow(subtraction_8, []), title('Output uint8 image');
subplot(2,3,3), imshow(subtraction_16, []), title('Output int16 image');
subplot(2,3,5), imshow(inv_subtraction_16, []), title('Output inv int16 image');
subplot(2,3,6), imshow(absdiff, []), title('Output abs. diff. image');


%% multiplication operation
clc; close all; clear;

lena = imread('lena.bmp');
jet  = imread('jet.bmp');
mask = imread('circle.bmp');
mask = logical(mask);

multiplic = immultiply(int16(lena), int16(jet));
multiplic_const2 = immultiply(lena, 2);
multiplic_const5 = immultiply(lena, 5);
multiplic_mask = immultiply(lena, mask);


subplot(2,3,1), imshow(lena), title('First image');
subplot(2,3,4), imshow(jet), title('Second image');

subplot(2,3,2), imshow(multiplic, []), title('Output for both images');
subplot(2,3,3), imshow(multiplic_const2, []), title('Output for constant=2');
subplot(2,3,5), imshow(multiplic_const5, []), title('Output for constant=5');
subplot(2,3,6), imshow(multiplic_mask, []), title('Output for mask');


%% negation operation
clc; close all; clear;

lena = imread('lena.bmp');
jet  = imread('jet.bmp');

negative_lena = imcomplement(lena);
negative_jet  = imcomplement(jet);

subplot(2,2,1), imshow(lena), title('First image');
subplot(2,2,3), imshow(jet), title('Second image');
subplot(2,2,2), imshow(negative_lena, []), title('Output image for lena');
subplot(2,2,4), imshow(negative_jet, []), title('Output image for jet');


