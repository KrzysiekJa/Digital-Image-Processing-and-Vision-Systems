%% boolean operations
clc; close all; clear;

square = logical(imread('square.bmp'));
circle = logical(imread('circle.bmp'));


subplot(2,4,1), imshow(square), title('First image');
subplot(2,4,5), imshow(circle), title('Second image');
subplot(2,4,2), imshow(~square), title('First negative');
subplot(2,4,6), imshow(~circle), title('Second negative');
subplot(2,4,3), imshow(square & circle), title('AND');
subplot(2,4,4), imshow(square | circle), title('OR');
subplot(2,4,7), imshow(xor(circle, square)), title('XOR');
