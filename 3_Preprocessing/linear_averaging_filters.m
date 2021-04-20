%% 3x3 filter on board.png
close all; clearvars; clc;

board = imread('board.png');


mask = fspecial('average', [3 3]);
result = uint8(conv2(board, mask, 'same'));


figure(1);
subplot(1,3,1), imshow(board), title('original');
subplot(1,3,2), imshow(result), title('result');
subplot(1,3,3), imshow(imabsdiff(board, result), []), title('difference');


%% different linear averaging filters
close all; clearvars; clc;

board = imread('board.png');

mask3x3 = fspecial('average', 3);
mask5x5 = fspecial('average', 5);
mask9x9 = fspecial('average', 9);
mask15x15 = fspecial('average', 15);
mask35x35 = fspecial('average', 35);

result3x3 = uint8(conv2(board, mask3x3, 'same'));
result0_5 = uint8(conv2(board, mask5x5, 'same'));
result0_75 = uint8(conv2(board, mask9x9, 'same'));
result15x15 = uint8(conv2(board, mask15x15, 'same'));
result35x35 = uint8(conv2(board, mask35x35, 'same'));


figure(1);
subplot(2,3,1), imshow(board), title('original');
subplot(2,3,2), imshow(result3x3), title('3x3 kernel');
subplot(2,3,3), imshow(result0_5), title('5x5 kernel');

subplot(2,3,4), imshow(result0_75), title('9x9 kernel');
subplot(2,3,5), imshow(result15x15), title('15x15 kernel');
subplot(2,3,6), imshow(result35x35), title('35x35 kernel');


%% different l.a. filters on lena.bmp
close all; clearvars; clc;

board = imread('lena.bmp');

mask3x3 = fspecial('average', 3);
mask5x5 = fspecial('average', 5);
mask9x9 = fspecial('average', 9);
mask15x15 = fspecial('average', 15);
mask35x35 = fspecial('average', 35);

result3x3 = uint8(conv2(board, mask3x3, 'same'));
result0_5 = uint8(conv2(board, mask5x5, 'same'));
result0_75 = uint8(conv2(board, mask9x9, 'same'));
result15x15 = uint8(conv2(board, mask15x15, 'same'));
result35x35 = uint8(conv2(board, mask35x35, 'same'));


figure(1);
subplot(2,3,1), imshow(board), title('original');
subplot(2,3,2), imshow(result3x3), title('3x3 kernel');
subplot(2,3,3), imshow(result0_5), title('5x5 kernel');

subplot(2,3,4), imshow(result0_75), title('9x9 kernel');
subplot(2,3,5), imshow(result15x15), title('15x15 kernel');
subplot(2,3,6), imshow(result35x35), title('35x35 kernel');


%% adverse effect filter
close all; clearvars; clc;

board = imread('board.png');

mask = fspecial('average', [3 3]);
low_pass = uint8(conv2(board, mask, 'same'));

mask = [1 2 1; 2 4 2; 1 2 1];
mask = mask / sum(sum(mask));
result = uint8(conv2(low_pass, mask, 'same'));


figure(1);
subplot(1,3,1), imshow(low_pass), title('low-pass');
subplot(1,3,2), imshow(result), title('result');
subplot(1,3,3), imshow(imabsdiff(board, result), []), title('difference');


%% gaussian filters on board.png
close all; clearvars; clc;

board = imread('board.png');

mask0_25 = fspecial('gaussian', 5, 0.25);
mask0_5  = fspecial('gaussian', 5, 0.5);
mask0_75 = fspecial('gaussian', 5, 0.75);

result0_25 = uint8(conv2(board, mask0_25, 'same'));
result0_5 = uint8(conv2(board, mask0_5, 'same'));
result0_75 = uint8(conv2(board, mask0_75, 'same'));


figure(1);
subplot(3,3,1), imshow(board), title('original');
subplot(3,3,2), imshow(result0_25), title('0.25 st. dev');
subplot(3,3,3), mesh(mask0_25), title('kernel for 0.25');
subplot(3,3,4), imshow(board), title('original');
subplot(3,3,5), imshow(result0_5), title('0.5 st. dev');
subplot(3,3,6), mesh(mask0_5), title('kernel for 0.5');
subplot(3,3,7), imshow(board), title('original');
subplot(3,3,8), imshow(result0_75), title('0.75 st. dev');
subplot(3,3,9), mesh(mask0_75), title('kernel for 0.75');

