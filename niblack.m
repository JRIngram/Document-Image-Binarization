function niblackedImage = niblack(image, neighbourhoodSize, k)
%NIBLACK Summary of this function goes here
%Detailed explanation goes here
    avg_filter = fspecial('average', neighbourhoodSize); %Creates an average filter
    avgImage = imfilter(image, avg_filter); %Averages the image
    stdImage = stdfilt(avgImage); %Calculates standard deviation
    kStdImage = k .* stdImage;
    niblackThreshold = double(avgImage) + kStdImage;
    niblackedImage = threshold(image, niblackThreshold);

end

