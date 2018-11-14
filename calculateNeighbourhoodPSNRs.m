function PSNRs = calculateBestNeighbourhood(image, groundTruth)
%CALCULATEBESTNEIGHBOURHOOD Calculates the PSNR values for neighbour values
%between 1 and 750 - increasing at intervals of 2.
%   Detailed explanation goes here
    k = -0.2;
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

