%% 3x3 median filter
close all; clearvars; clc;

lena = imread('lenaNoise.bmp');

result = medfilt2(lena, [3 3]);


figure(1);
subplot(1,3,1), imshow(lena), title('original');
subplot(1,3,2), imshow(result), title('result');
subplot(1,3,3), imshow(imabsdiff(lena, result), []), title('difference');


%% median and averaging filters comparison
close all; clearvars; clc;

lena = imread('lenaNoise.bmp');

mask = fspecial('average', [3 3]);
result_ave = uint8(conv2(lena, mask, 'same'));
result_med = medfilt2(lena, [3 3]);


figure(1);
subplot(2,3,1), imshow(lena), title('original');
subplot(2,3,2), imshow(result_ave), title('averaging');
subplot(2,3,3), imshow(imabsdiff(lena, result_ave), []), title('difference');
subplot(2,3,4), imshow(lena), title('original');
subplot(2,3,5), imshow(result_med), title('medium');
subplot(2,3,6), imshow(imabsdiff(lena, result_med), []), title('difference');


%% posterization effect
close all; clearvars; clc;

lena   = imread('lena.bmp');
result = lena;

for i = 1:10
    result = medfilt2(lena, [5 5]);
end

figure(1);
subplot(1,2,1), imshow(lena), title('original');
subplot(1,2,2), imshow(result), title('result after posterization 5x5');



