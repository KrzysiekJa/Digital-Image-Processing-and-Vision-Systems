function LUT(image,reencoding)
%LUT Summary of this function goes here
%   Funtion for showing the results of LUT operation

lut = intlut(image, reencoding);

subplot(1,3,1), imshow(image), title('Input image');
subplot(1,3,2), plot(reencoding);
xlim([0 256]), ylim([0 256]), daspect([2 2 1]), title('LUT function');
subplot(1,3,3), imshow(lut), title('Output image');

end

