%% basic operations - erosion 3x3
close all; clearvars; clc;

ertka = imread('ertka.bmp');


srtel_sq = strel('square', 3);
srtel_sp = strel('sphere', 3);
srtel_dm = strel('diamond', 3);
face_erode = imerode(ertka, srtel_sq);
ertka_erode_sp = imerode(ertka, srtel_sp);
ertka_erode_dm = imerode(ertka, srtel_dm);


figure(1);
subplot(2,2,1), imshow(ertka), title('original');
subplot(2,2,2), imshow(face_erode), title('erosion square');
subplot(2,2,3), imshow(ertka_erode_sp), title('sphere');
subplot(2,2,4), imshow(ertka_erode_dm), title('diamond');


%% basic operations - multiple erosion
close all; clearvars; clc;

ertka = imread('ertka.bmp');


srtel_sq = strel('square', 3);
face_erode = imerode(ertka, srtel_sq);
ertka_erodex2 = imerode(face_erode, srtel_sq);
ertka_erodex3 = imerode(ertka_erodex2, srtel_sq);


figure(1);
subplot(2,2,1), imshow(ertka), title('original');
subplot(2,2,2), imshow(face_erode), title('erosion');
subplot(2,2,3), imshow(ertka_erodex2), title('erosion x2');
subplot(2,2,4), imshow(ertka_erodex3), title('erosion x3');


%% basic operations - face.bmp
close all; clearvars; clc;

ertka = imread('face.bmp');


srtel_ones = [1 0 0;
              0 1 0;
              0 0 1];
face_erode = imerode(ertka, srtel_ones);


figure(1);
subplot(1,2,1), imshow(ertka), title('original');
subplot(1,2,2), imshow(face_erode), title('erosion - rigth');


%% basic operations - dilatation
close all; clearvars; clc;

ertka = imread('ertka.bmp');


srtel_sq = strel('square', 3);
ertka_dilate = imdilate(ertka, srtel_sq);


figure(1);
subplot(1,2,1), imshow(ertka), title('original');
subplot(1,2,2), imshow(ertka_dilate), title('dilatation');


%% basic operations - all
close all; clearvars; clc;

ertka = imread('ertka.bmp');


srtel_sq = strel('square', 3);
ertka_erode  = imerode(ertka, srtel_sq);
ertka_dilate = imdilate(ertka, srtel_sq);
ertka_open   = imopen(ertka, srtel_sq);
ertka_close  = imclose(ertka, srtel_sq);


figure(1);
subplot(2,3,1), imshow(ertka), title('original');
subplot(2,3,2), imshow(ertka_erode), title('erosion');
subplot(2,3,3), imshow(ertka_dilate), title('dilatation');

subplot(2,3,5), imshow(ertka_open), title('opening');
subplot(2,3,6), imshow(ertka_close), title('closing');


%% basic operations - all: island.bmp
close all; clearvars; clc;

island = imread('island.bmp');


srtel_sq = strel('square', 3);
island_erode  = imerode(island, srtel_sq);
island_dilate = imdilate(island, srtel_sq);
island_open   = imopen(island, srtel_sq);
island_close  = imclose(island, srtel_sq);


figure(1);
subplot(2,3,1), imshow(island), title('original');
subplot(2,3,2), imshow(island_erode), title('erosion');
subplot(2,3,3), imshow(island_dilate), title('dilatation');

subplot(2,3,5), imshow(island_open), title('opening');
subplot(2,3,6), imshow(island_close), title('closing');


%% basic operations - all: circles.bmp
close all; clearvars; clc;

circles = imread('circles.bmp');


srtel_sq = strel('square', 3);
circles_erode  = imerode(circles, srtel_sq);
circles_dilate = imdilate(circles, srtel_sq);
circles_open   = imopen(circles, srtel_sq);
circles_close  = imclose(circles, srtel_sq);


figure(1);
subplot(2,3,1), imshow(circles), title('original');
subplot(2,3,2), imshow(circles_erode), title('erosion');
subplot(2,3,3), imshow(circles_dilate), title('dilatation');

subplot(2,3,5), imshow(circles_open), title('opening');
subplot(2,3,6), imshow(circles_close), title('closing');


%% mini task
close all; clearvars; clc;

ertka = imread('ertka.bmp');


srtel_sq = strel('square', 3);
ertka_open_close = imclose(imopen(ertka, srtel_sq), srtel_sq);


figure(1);
subplot(1,2,1), imshow(ertka), title('original');
subplot(1,2,2), imshow(ertka_open_close), title('result');


%% hit-miss
close all; clearvars; clc;

hom = imread('hom.bmp');


SE1 = [0 1 0; 1 1 1; 0 1 0];
SE2 = [1 0 1; 0 0 0; 1 0 1];
homeSE1 = bwhitmiss(hom, SE1);
homeSE2 = bwhitmiss(hom, SE2);


figure(1);
subplot(1,3,1), imshow(hom), title('original');
subplot(1,3,2), imshow(homeSE1), title('result SE1');
subplot(1,3,3), imshow(homeSE2), title('result SE2');




