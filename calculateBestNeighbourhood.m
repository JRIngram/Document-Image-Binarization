function PSNRs = calculateBestNeighbourhood(image, groundTruth)
%CALCULATEBESTNEIGHBOURHOOD Summary of this function goes here
%   Detailed explanation goes here
    k = 0.5;
    nib = @niblack
    PSNRs = [];
    for n = [1:2:750];
        newImage = nib(image, n, k);
        binaryNewImage = convertToBinary(newImage);
        newPSNR = psnr(binaryNewImage, groundTruth);
        PSNRs = [PSNRs, newPSNR];
        disp(n)
    end
end

