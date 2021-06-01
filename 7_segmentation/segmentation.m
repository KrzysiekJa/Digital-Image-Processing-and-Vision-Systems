%% ginput usage
close all; clearvars; clc;

knee = imread('knee.png');


figure(1), imshow(knee), title('original');

[cx, cy] = ginput(1);
disp([cx, cy]);


%% region growing segmentation
close all; clearvars; clc;

knee = imread('knee.png');
double_knee = double(knee);


figure(1), imshow(knee), title('original');
[cy, cx] = ginput(1);


cx = round(cx); cy = round(cy);
[Ix, Iy]  = size(double_knee);
visited   = zeros(Ix, Iy , 'uint8');
segmented = zeros(Ix, Iy , 'uint8');

stack = zeros(2, 10000);

k = 1;
c_num = 0; mean_val = 0;

stack(1, k) = cx;
stack(2, k) = cy;
visited(cx, cy) = 1;
segmented(cx, cy) = 1;

threshold = 42;



while k > 0
    px = stack(1, k);
    py = stack(2, k);
    k = k - 1;
    c_num = c_num + 1;
    mean_val = (mean_val * (c_num-1) + double_knee(px,py)) /c_num;
    
    if px > 1 && py > 1 && px < Ix && py < Iy
        for i = px-1:px+1
            for j = py-1:py+1
                
                if i ~= px && j ~= py && visited(i,j)==0 && abs(double_knee(i,j) - mean_val) < threshold
                    k = k + 1;
                    stack(1, k) = i;
                    stack(2, k) = j;
                    
                    segmented(i,j) = 255;
                elseif i == px && j == py
                    segmented(i,j) = 255;
                end
                
                visited(i,j) = 1;
            end
        end
    end
end

figure(1), imshow(segmented), title('segmented');

