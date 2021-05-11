%% thinning operation
close all; clearvars; clc;

fingerprint = imread('fingerprint.bmp');


thinnerx1 = bwmorph(fingerprint, 'thin', Inf);
thinnerx2 = bwmorph(thinnerx1, 'thin', Inf);
thinnerx3 = bwmorph(thinnerx2, 'thin', Inf);
thinnerx4 = bwmorph(thinnerx3, 'thin', Inf);
thinnerx5 = bwmorph(thinnerx4, 'thin', Inf);


figure(1);
subplot(2,3,1), imshow(fingerprint), title('original');
subplot(2,3,2), imshow(thinnerx1), title('thining x1');
subplot(2,3,3), imshow(thinnerx2), title('thining x2');
subplot(2,3,4), imshow(thinnerx3), title('thining x3');
subplot(2,3,5), imshow(thinnerx4), title('thining x4');
subplot(2,3,6), imshow(thinnerx5), title('thining x5');


%% skeletonization
close all; clearvars; clc;

bone = imread('bone.bmp');


skeleton = bwmorph(bone, 'skel', Inf);


figure(1);
subplot(1,2,1), imshow(bone), title('original');
subplot(1,2,2), imshow(skeleton), title('skeletonization');


%% reconstruction
close all; clearvars; clc;

text = imread('text.bmp');


srtel_sq = strel('square', 5);
openSE = imdilate(text, srtel_sq);
reconstruction = imreconstruct(openSE, text);


figure(1);
subplot(3,1,1), imshow(text), title('original');
subplot(3,1,2), imshow(openSE), title('after dilatation');
subplot(3,1,3), imshow(reconstruction), title('reconstruction');


%% reconstruction by opening
close all; clearvars; clc;

text = imread('text.bmp');


SE = ones(51,1);
openSE = imopen(text,SE);
reconstruction = imreconstruct(openSE, text);


figure(1);
subplot(3,1,1), imshow(text), title('original');
subplot(3,1,2), imshow(openSE), title('after opening');
subplot(3,1,3), imshow(reconstruction), title('reconstruction');


%% filling holes
close all; clearvars; clc;

text = imread('text.bmp');


filled = imfill(text, 'holes');


figure(1);
subplot(2,1,1), imshow(text), title('original');
subplot(2,1,2), imshow(filled), title('filling holes');


%% clearing the border
close all; clearvars; clc;

text = imread('text.bmp');


cleared = imclearborder(text);


figure(1);
subplot(2,1,1), imshow(text), title('original');
subplot(2,1,2), imshow(cleared), title('clearing the border');


