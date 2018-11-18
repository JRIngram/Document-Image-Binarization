function binarizedImage = otsuAndDisplay(image)
%OTSUANDDISPLAY Summary of this function goes here
%   Detailed explanation goes here
    threshold = graythresh(image);
    binarizedImage = imbinarize(image, threshold)
    imshow(binarizedImage)
end

