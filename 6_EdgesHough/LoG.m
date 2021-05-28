%% LoG
close all; clearvars; clc;

house = imread('house.png');


edge_house = edge(house, 'log');


subplot(1,2,1), imshow(house), title('original');
subplot(1,2,2), imshow(edge_house), title('LoG result');


%% zerocross
close all; clearvars; clc;

house = imread('house.png');


disk = fspecial('disk');
motion = fspecial('motion', 12);
edge_disk = edge(house, 'zerocross', disk);
edge_aver = edge(house, 'zerocross', motion);


subplot(1,3,1), imshow(house), title('original');
subplot(1,3,2), imshow(edge_disk), title('LoG plus disk');
subplot(1,3,3), imshow(edge_aver, []), title('LoG plus motion');


%% Canny
close all; clearvars; clc;

house = imread('house.png');


edge = edge(house, 'canny',[0.04 0.1], 3);


subplot(1,2,1), imshow(house), title('original');
subplot(1,2,2), imshow(edge, []), title('Canny detection');

