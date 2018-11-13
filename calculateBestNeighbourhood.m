function PSNRs = calculateBestNeighbourhood(image, groundTruth)
%CALCULATEBESTNEIGHBOURHOOD Summary of this function goes here
%   Detailed explanation goes here
    k = 0.5;
    nib = @niblack
    PSNRs = [];
    for n = [1:500];
        newImage = nib(image, n, k);
        newPSNR = psnr(groundTruth, newImage);
        PSNRs = [PSNRs, newPSNR];
    end
end

