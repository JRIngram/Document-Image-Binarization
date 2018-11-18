function niblackAndDisplay(image, neighbourhoodSize, k)
%NIBLACKANDDISPLAY Summary of this function goes here
%   Detailed explanation goes here
    niblackedImage = niblack(image, neighbourhoodSize, k)
    imshow(niblackedImage);
end

