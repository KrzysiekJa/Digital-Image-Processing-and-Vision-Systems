%% image display
clearvars; close all; clc;

coins = imread('coins.png');

figure(1)
subplot(1,2,1), imshow(coins), title('original');
subplot(1,2,2), imhist(coins), title('its histogram'), ylim([0,4300]);


%% histogram binarization
clearvars; close all; clc;

[coins, map] = imread('coins.png');

binary = im2bw(coins, map, 85./255);


figure(1)
subplot(1,2,1), imshow(coins), title('original');
subplot(1,2,2), imshow(binary), title('binarization result');


%% different images display
clearvars; close all; clc;

shape1 = imread('shape1.png');
shape2 = imread('shape2.png');
shape3 = imread('shape3.png');
shape4 = imread('shape4.png');


figure(1)
subplot(2,4,1), imshow(shape1), title('shape1');
subplot(2,4,2), imshow(shape2), title('shape2');
subplot(2,4,3), imshow(shape3), title('shape3');
subplot(2,4,4), imshow(shape4), title('shape4');
subplot(2,4,5), imhist(shape1), title('hist 1'), ylim([0,370000]);
subplot(2,4,6), imhist(shape2), title('hist 2'), ylim([0,13000]);
subplot(2,4,7), imhist(shape3), title('hist 3');
subplot(2,4,8), imhist(shape4), title('hist 4'), ylim([0,15000]);


%% Otzu binarization
clearvars; close all; clc;

coins = imread('coins.png');

binary = im2bw(coins, 85./255);
otzu_result = graythresh(coins);
otzu_binary = im2bw(coins, otzu_result);


figure(1)
subplot(1,3,1), imshow(coins), title('original');
subplot(1,3,2), imshow(binary), title('own binarization');
subplot(1,3,3), imshow(otzu_binary), title('Otzu binarization');


%% Kittler and Yen binarizations
clearvars; close all; clc;

coins = imread('coins.png');


binary = im2bw(coins, 85./255);
otzu_result = graythresh(coins);
otzu_binary = im2bw(coins, otzu_result);

kittler_result = clusterKittler(coins);
kittler_binary = im2bw(coins, kittler_result/255.);
yen_result = entropyYen(coins);
yen_binary = im2bw(coins, yen_result/255.);


figure(1)
subplot(2,3,1), imshow(coins), title('original');
subplot(2,3,2), imshow(binary), title(['own binarization ', num2str(85)]);
subplot(2,3,3), imshow(otzu_binary), title(['Otzu binarization ', num2str(otzu_result * 255)]);
subplot(2,3,4), imhist(coins), title('histogram'), ylim([0,4300]);
subplot(2,3,5), imshow(kittler_binary), title(['Kittler binarization ', num2str(kittler_result)]);
subplot(2,3,6), imshow(yen_binary), title(['Yen binarization ', num2str(yen_result)]);


%% rice.png
clearvars; close all; clc;

rice = imread('rice.png');


binary = im2bw(rice, 125./255);
otzu_result = graythresh(rice);
otzu_binary = im2bw(rice, otzu_result);

kittler_result = clusterKittler(rice);
kittler_binary = im2bw(rice, kittler_result/255.);
yen_result = entropyYen(rice);
yen_binary = im2bw(rice, yen_result/255.);


figure(1)
subplot(2,3,1), imshow(rice), title('original');
subplot(2,3,2), imshow(binary), title(['own binarization ', num2str(125)]);
subplot(2,3,3), imshow(otzu_binary), title(['Otzu binarization ', num2str(otzu_result * 255)]);
subplot(2,3,4), imhist(rice), title('histogram'), ylim([0,4300]);
subplot(2,3,5), imshow(kittler_binary), title(['Kittler binarization ', num2str(kittler_result)]);
subplot(2,3,6), imshow(yen_binary), title(['Yen binarization ', num2str(yen_result)]);


%% text.bmp
clearvars; close all; clc;

text = imread('text.bmp');


binary = im2bw(text, 170./255);
otzu_result = graythresh(text);
otzu_binary = im2bw(text, otzu_result);

kittler_result = clusterKittler(text);
kittler_binary = im2bw(text, kittler_result/255.);
yen_result = entropyYen(text);
yen_binary = im2bw(text, yen_result/255.);


figure(1)
subplot(2,3,1), imshow(text), title('original');
subplot(2,3,2), imshow(binary), title(['own binarization ', num2str(170)]);
subplot(2,3,3), imshow(otzu_binary), title(['Otzu binarization ', num2str(otzu_result * 255)]);
subplot(2,3,4), imhist(text), title('histogram'), ylim([0,4300]);
subplot(2,3,5), imshow(kittler_binary), title(['Kittler binarization ', num2str(kittler_result)]);
subplot(2,3,6), imshow(yen_binary), title(['Yen binarization ', num2str(yen_result)]);


%% objects.bmp
clearvars; close all; clc;

objects = imread('objects.bmp');


binary = im2bw(objects, 165./255);
otzu_result = graythresh(objects);
otzu_binary = im2bw(objects, otzu_result);

kittler_result = clusterKittler(objects);
kittler_binary = im2bw(objects, kittler_result/255.);
yen_result = entropyYen(objects);
yen_binary = im2bw(objects, yen_result/255.);


figure(1)
subplot(2,3,1), imshow(objects), title('original');
subplot(2,3,2), imshow(binary), title(['own binarization ', num2str(165)]);
subplot(2,3,3), imshow(otzu_binary), title(['Otzu binarization ', num2str(otzu_result * 255)]);
subplot(2,3,4), imhist(objects), title('histogram'), ylim([0,4300]);
subplot(2,3,5), imshow(kittler_binary), title(['Kittler binarization ', num2str(kittler_result)]);
subplot(2,3,6), imshow(yen_binary), title(['Yen binarization ', num2str(yen_result)]);


%% catalogue.bmp
clearvars; close all; clc;

catalogue = imread('catalogue.bmp');


binary = im2bw(catalogue, 100./255);
otzu_result = graythresh(catalogue);
otzu_binary = im2bw(catalogue, otzu_result);

kittler_result = clusterKittler(catalogue);
kittler_binary = im2bw(catalogue, kittler_result/255.);
yen_result = entropyYen(catalogue);
yen_binary = im2bw(catalogue, yen_result/255.);


figure(1)
subplot(2,3,1), imshow(catalogue), title('original');
subplot(2,3,2), imshow(binary), title(['own binarization ', num2str(100)]);
subplot(2,3,3), imshow(otzu_binary), title(['Otzu binarization ', num2str(otzu_result * 255)]);
subplot(2,3,4), imhist(catalogue), title('histogram'), ylim([0,4300]);
subplot(2,3,5), imshow(kittler_binary), title(['Kittler binarization ', num2str(kittler_result)]);
subplot(2,3,6), imshow(yen_binary), title(['Yen binarization ', num2str(yen_result)]);



