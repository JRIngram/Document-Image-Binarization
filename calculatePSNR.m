function PSNR = calculatePSNR(img1,img2)
%CALCULATEPSNR Summary of this function goes here
%   Detailed explanation goes here
pixel_diff = double(img1) - double(img2);
MSE = pixel_diff.^2 ./ length(pixel_diff.^2);
MSE = sum(MSE(:));
PSNR = log10(256^2 ./ MSE);
end

