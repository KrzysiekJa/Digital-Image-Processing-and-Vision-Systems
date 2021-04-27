function [output_image] = sauvolaBinarization(image, W2)

[X, Y] = size(image);
imageBW = image;
k = 0.15;
R = 128;


for i = 1:X
    for j = 1:Y
        mean   = meanLT(i, j, W2, image, X, Y);
        stddev = stddevLT(i, j, W2, image, mean, X, Y);
        
        threshold = mean * (1 + k * (stddev/R - 1));
        
        if threshold > image(i,j)
            imageBW(i,j) = 0;
        else
            imageBW(i,j) = 255;
        end
    end
end

output_image = imageBW;
end

