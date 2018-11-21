function PSNR = otsu_PSNR(image, groundtruth)
%OTSUPSNR Performs Otsu's method on an image and then calculates the PSNR
%between the binarized image and the ground truth.
    threshold = graythresh(image);
    binarizedImage = uint8(imbinarize(image, threshold));
    PSNR = psnr(binarizedImage, groundtruth);
end 

