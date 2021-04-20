%% image display
clearvars; close all; clc;

rice = imread('rice.png');
W2 = 7;


imageBW = localBinarization(rice, W2);


figure(1)
subplot(1,2,1), imshow(rice), title('original');
subplot(1,2,2), imshow(imageBW), title('binarization');


%% rice.png and catalogue.png
clearvars; close all; clc;

rice = imread('rice.png');
catalogue = imread('catalogue.bmp');

W2 = [5, 9, 20];
im_num = 1;


figure(1)
subplot(2,4,1), imshow(rice), title('original');


for k = 1:length(W2)
    imageBW = localBinarization(rice, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end



im_num = im_num + 1;
subplot(2,4,im_num), imshow(catalogue), title('original');


for k = 1:length(W2)
    imageBW = localBinarization(catalogue, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end


%% Sauvola method k = 0.15
clearvars; close all; clc;

rice = imread('rice.png');
catalogue = imread('catalogue.bmp');

W2 = [5, 9, 20];
im_num = 1;


figure(1)
subplot(2,4,1), imshow(rice), title('original');


for k = 1:length(W2)
    imageBW = sauvolaBinarization(rice, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end



im_num = im_num + 1;
subplot(2,4,im_num), imshow(catalogue), title('original');


for k = 1:length(W2)
    imageBW = sauvolaBinarization(catalogue, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end


figure(2)
imshow(sauvolaBinarization(catalogue, 60)), title(['W2 = ', num2str(60)]);


%% Sauvola method k = 0.3
clearvars; close all; clc;

rice = imread('rice.png');
catalogue = imread('catalogue.bmp');

W2 = [5, 9, 20];
im_num = 1;


figure(1)
subplot(2,4,1), imshow(rice), title('original');


for k = 1:length(W2)
    imageBW = sauvolaBinarization(rice, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end



im_num = im_num + 1;
subplot(2,4,im_num), imshow(catalogue), title('original');


for k = 1:length(W2)
    imageBW = sauvolaBinarization(catalogue, W2(k));
    
    im_num = im_num + 1;
    subplot(2,4,im_num), imshow(imageBW), title(['W2 = ', num2str(W2(k))]);
end

figure(2)
imshow(sauvolaBinarization(catalogue, 60)), title(['W2 = ', num2str(60)]);


