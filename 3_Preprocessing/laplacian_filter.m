%% Laplacian filtering
close all; clearvars; clc;

moon = imread('moon.png');

mask = [0 1 0; 1 -4 1; 0 1 0];
mask = mask./9;
moon_conv = conv2(moon, mask, 'same');
result1 = uint8(moon_conv) + 128;
result2 = abs(moon_conv);


figure(1);
subplot(1,4,1), imshow(moon), title('original');
subplot(1,4,2), imshow(moon_conv), title('result');
subplot(1,4,3), imshow(result1, []), title('result with added 128');
subplot(1,4,4), imshow(result2, []), title('result after abs. val.');


%% Laplacian fspecial filtering
close all; clearvars; clc;

moon = imread('moon.png');

mask = fspecial('laplacian');
moon_conv = conv2(moon, mask, 'same');
result1 = uint8(moon_conv) + 128;
result2 = abs(moon_conv);


figure(1);
subplot(2,3,1), imshow(moon), title('original');
subplot(2,3,2), imshow(moon_conv), title('result');
subplot(2,3,3), imshow(result1, []), title('result with added 128');
subplot(2,3,4), imshow(result2, []), title('result after abs. val.');
subplot(2,3,5), imshow(uint8(moon) + uint8(result2)), title('sum');
subplot(2,3,6), imshow(imabsdiff(uint8(moon), uint8(result2))), title('difference');

