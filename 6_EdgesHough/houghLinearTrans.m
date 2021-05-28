function [H] = houghLinearTrans(img, aMin, aMax, aStep, bMin, bMax, bStep)
% function for linear hough transformation
% not complited

H = zeros(ceil((aMax-aMin)/aStep), ceil((bMax-bMin)/bStep));


for i = 1:size(img, 1)
    for j = 1:size(img, 2)
        
        if img(i,j) == 1
            for k = 1:size(H, 1)
                for l = 1:size(H, 2)
                    
                    a = int8((j - l) /i);
                    b = -i * k + j;
                    
                    if a >= 0 && b >= 0
                        H(a+1,b+1) = H(a+1,b+1) + 1;
                    end
                end
            end
        end
    end
end

end

