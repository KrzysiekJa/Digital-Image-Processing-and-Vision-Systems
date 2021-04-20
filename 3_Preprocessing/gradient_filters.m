%% gradient filtering Roberts
close all; clearvars; clc;

squares = imread('squares.bmp');
load('masks.mat');

result_R1 = uint8(conv2(squares, R1, 'same'));
result_R2 = uint8(conv2(squares, R2, 'same'));


result_R1_128 = uint8(result_R1) + 128;
result_R1_abs = abs(result_R1);
result_R2_128 = uint8(result_R2) + 128;
result_R2_abs = abs(result_R2);

figure(1);
subplot(2,3,1), imshow(squares), title('original');
subplot(2,3,2), imshow(result_R1_128), title('after R1 128');
subplot(2,3,3), imshow(result_R2_128), title('after R2 128');
subplot(2,3,5), imshow(result_R1_abs), title('after R1 abs');
subplot(2,3,6), imshow(result_R2_abs), title('after R2 abs');


%% gradient filtering Prewitt
close all; clearvars; clc;

squares = imread('squares.bmp');
load('masks.mat');

result_P1 = uint8(conv2(squares, P1, 'same'));
result_P2 = uint8(conv2(squares, P2, 'same'));


result_P1_128 = uint8(result_P1) + 128;
result_P1_abs = abs(result_P1);
result_P2_128 = uint8(result_P2) + 128;
result_P2_abs = abs(result_P2);

figure(1);
subplot(2,3,1), imshow(squares), title('original');
subplot(2,3,2), imshow(result_P1_128), title('after P1 128');
subplot(2,3,3), imshow(result_P2_128), title('after P2 128');
subplot(2,3,5), imshow(result_P1_abs), title('after P1 abs');
subplot(2,3,6), imshow(result_P2_abs), title('after P2 abs');


%% gradient filtering Sobel
close all; clearvars; clc;

squares = imread('squares.bmp');
load('masks.mat');

result_S1 = uint8(conv2(squares, S1, 'same'));
result_S2 = uint8(conv2(squares, S2, 'same'));


result_S1_128 = uint8(result_S1) + 128;
result_S1_abs = abs(result_S1);
result_S2_128 = uint8(result_S2) + 128;
result_S2_abs = abs(result_S2);

figure(1);
subplot(2,3,1), imshow(squares), title('original');
subplot(2,3,2), imshow(result_S1_128), title('after S1 128');
subplot(2,3,3), imshow(result_S2_128), title('after S2 128');
subplot(2,3,5), imshow(result_S1_abs), title('after S1 abs');
subplot(2,3,6), imshow(result_S2_abs), title('after S2 abs');


%% combined filters
close all; clearvars; clc;

squares = imread('squares.bmp');
load('masks.mat');

result_S1 = conv2(squares, S1, 'same');
result_S2 = conv2(squares, S2, 'same');

output_image = sqrt(result_S1.^2 + result_S2.^2);
output_image_abs = abs(result_S1) + abs(result_S2);


figure(1);
subplot(1,3,1), imshow(squares), title('original');
subplot(1,3,2), imshow(output_image), title('after combined filters');
subplot(1,3,3), imshow(output_image_abs), title('after abs. operation on filters');


%% gradient filtering with jet.bmp
close all; clearvars; clc;

squares = imread('jet.bmp');
load('masks.mat');

result_S1 = conv2(squares, S1, 'same');
result_S2 = conv2(squares, S2, 'same');

output_image = uint8(sqrt(result_S1.^2 + result_S2.^2));
output_image_abs = uint8(abs(result_S1) + abs(result_S2));


figure(1);
subplot(1,3,1), imshow(squares), title('original');
subplot(1,3,2), imshow(output_image), title('after combined filters');
subplot(1,3,3), imshow(output_image_abs), title('after abs. operation on filters');


