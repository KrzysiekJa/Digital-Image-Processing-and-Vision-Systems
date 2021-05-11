%% grayscale morph.
close all; clearvars; clc;

ferrari = imread('ferrari.bmp');


srtel_sq = strel('square', 3);
ferrari_erode  = imerode(ferrari, srtel_sq);
ferrari_dilate = imdilate(ferrari, srtel_sq);
difference = abs(ferrari_dilate - ferrari_erode);


figure(1);
subplot(2,2,1), imshow(ferrari), title('original');
subplot(2,2,2), imshow(ferrari_erode), title('erosion');
subplot(2,2,3), imshow(ferrari_dilate), title('dilate');
subplot(2,2,4), imshow(difference), title('difference');


%% grayscale opening, closing
close all; clearvars; clc;

ferrari = imread('ferrari.bmp');


srtel_sq = strel('square', 3);
ferrari_open  = imopen(ferrari, srtel_sq);
ferrari_close = imclose(ferrari, srtel_sq);


figure(1);
subplot(1,3,1), imshow(ferrari), title('original');
subplot(1,3,2), imshow(ferrari_open), title('openning');
subplot(1,3,3), imshow(ferrari_close), title('closing');


%% grayscale tophat, bottomhat
close all; clearvars; clc;

ferrari = imread('ferrari.bmp');


srtel_sq = strel('square', 3);
ferrari_top  = imtophat(ferrari, srtel_sq);
ferrari_bot = imbothat(ferrari, srtel_sq);


figure(1);
subplot(1,3,1), imshow(ferrari), title('original');
subplot(1,3,2), imshow(ferrari_top), title('top-hat');
subplot(1,3,3), imshow(ferrari_bot), title('bottom-hat');


%% grayscale tophat: rice.png
close all; clearvars; clc;

rice = imread('rice.png');


srtel_disk = strel('disk', 10);
rice_top = imtophat(rice, srtel_disk);


figure(1);
subplot(1,2,1), imshow(rice), title('original');
subplot(1,2,2), imshow(rice_top), title('top-hat');




