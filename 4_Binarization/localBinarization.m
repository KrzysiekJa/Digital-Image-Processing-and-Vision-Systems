function [output_image] = localBinarization(image, W2)

[X, Y] = size(image);
imageBW = image;

for i = 1:X
    for j = 1:Y
        mean = meanLT(i, j, W2, image, X, Y);

        if mean > image(i,j)
            imageBW(i,j) = 0;
        else
            imageBW(i,j) = 255;
        end
    end
end

output_image = imageBW;
end

