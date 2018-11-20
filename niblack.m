function niblackedImage = niblack(image, neighbourhoodSize, k)
%NIBLACK Performs Niblack's method to binarize an image.
% Performs Niblack's method on an image by calculating a threshold on a 
% pixel-by-pixel basis and applying it.
% Threshold is calculated by: mean + (k * standardDeviation) of pixel
% intensity within a neighbourhood of a size defined by the user.
    avg_filter = fspecial('average', neighbourhoodSize); %Creates an average filter
    avgImage = imfilter(image, avg_filter); %Averages the image
    stdImage = stdfilt(avgImage, true(neighbourhoodSize)); %Calculates standard deviation
    kStdImage = k .* stdImage;
    niblackThreshold = double(avgImage) + kStdImage;
    niblackedImage = threshold(image, niblackThreshold);
end

