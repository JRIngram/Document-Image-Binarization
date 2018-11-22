function PSNRs = calculate_neighbourhood_PSNR(image, groundTruth)
%CALCULATE_NEIGHBOURHOOD_PSNR Calculates the PSNR values for differing 
%neighbourhood sizes values.
% Performs Niblack's method  for differing neighbourhood sizes values 
% between 1 and 1000 - increasing at intervals of 2. Once an image has been
% "Niblacked", the image is compared with a ground truth version of the
% image to calculate a PSNR value.
    k = -0.2;
    nib = @niblack;
    PSNRs = [];
    for n = [1:2:999];
        newImage = nib(image, n, k);
        binaryNewImage = convert_to_binary(newImage);
        newPSNR = psnr(binaryNewImage, groundTruth);
        PSNRs = [PSNRs, newPSNR];
    end
end

