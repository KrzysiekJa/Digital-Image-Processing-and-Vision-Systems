%% RGB result
clearvars; close all; clc;

lenaRGB = imread('lenaRGB.bmp');

R = lenaRGB (:,:, 1);
G = lenaRGB (:,:, 2);
B = lenaRGB (:,:, 3);

figure (1);
subplot (2,2,1), imhist (lenaRGB, 256), title ('Original');
subplot (2,2,2), imhist (R, 256), title ('R');
subplot (2,2,3), imhist (G, 256), title ('G');
subplot (2,2,4), imhist (B, 256), title ('B');


%% RGB HE
clearvars; close all; clc;

lenaRGB = imread('lenaRGB.bmp');

R = histeq( lenaRGB (:,:, 1) );
G = histeq( lenaRGB (:,:, 2) );
B = histeq( lenaRGB (:,:, 3) );

imageEQ = lenaRGB;

imageEQ(:,:, 1) = R;
imageEQ(:,:, 2) = G;
imageEQ(:,:, 3) = B;


figure (1);
subplot (1,2,1), imshow (lenaRGB), title ('Original');
subplot (1,2,2), imshow (imageEQ), title ('New');


%% HSV HE
clearvars; close all; clc;

lenaRGB = imread('lenaRGB.bmp');
lenaHSV = rgb2hsv(lenaRGB);


H = lenaHSV (:,:, 1);
S = lenaHSV (:,:, 2);
V = lenaHSV (:,:, 3);

figure (1);
subplot (2,2,1), imhist (lenaHSV, 256), title ('Original');
subplot (2,2,2), imhist (H, 256), title ('H');
subplot (2,2,3), imhist (S, 256), title ('S');
subplot (2,2,4), imhist (V, 256), title ('V');

V = histeq(V);
lenaHSV(:,:,3) = V;
figure (2);
subplot (2,2,1), imhist (lenaHSV, 256), title ('Original');
subplot (2,2,2), imhist (H, 256), title ('H');
subplot (2,2,3), imhist (S, 256), title ('S');
subplot (2,2,4), imhist (V, 256), title ('V');

lenaRGB = hsv2rgb(lenaHSV);
figure (3);
imshow (lenaRGB), title ('Final');


%% HSV HE lake
clearvars; close all; clc;

lakeRGB = imread('lake.jpg');
lakeHSV = rgb2hsv(lakeRGB);


H = lakeHSV (:,:, 1);
S = lakeHSV (:,:, 2);
V = lakeHSV (:,:, 3);


figure (1);
imshow (lakeRGB), title ('Original');

figure (2);
subplot (2,2,1), imhist (lakeHSV, 256), title ('Original');
subplot (2,2,2), imhist (H, 256), title ('H');
subplot (2,2,3), imhist (S, 256), title ('S');
subplot (2,2,4), imhist (V, 256), title ('V');

V = histeq(V);
lakeHSV(:,:,3) = V;
figure (3);
subplot (2,2,1), imhist (lakeHSV, 256), title ('Original');
subplot (2,2,2), imhist (H, 256), title ('H');
subplot (2,2,3), imhist (S, 256), title ('S');
subplot (2,2,4), imhist (V, 256), title ('V');

lakeRGB = hsv2rgb(lakeHSV);
figure (4);
imshow (lakeRGB), title ('Final');


