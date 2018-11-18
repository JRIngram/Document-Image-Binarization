function PSNR = otsuPSNR(image, groundtruth)
%OTSUPSNR Summary of this function goes here
%   Detailed explanation goes here
    threshold = graythresh(image);
    binarizedImage = uint8(imbinarize(image, threshold))
    PSNR = psnr(binarizedImage, groundtruth);
end 

