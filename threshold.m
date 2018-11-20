function threshold_matrix = threshold(img_matrix, threshold)
%Thresholds an image via some set threshold value.
% Takes each pixel, and for each pixel if that pixel intensity is less than
% the threshold value the pixel is set to black; if the pixel intensity is
% equal or greater than the threshold then the pixel is set to white.
    threshold_matrix = img_matrix;
    threshold_matrix(threshold_matrix<threshold) = 0;
    threshold_matrix(threshold_matrix>threshold | threshold_matrix == threshold) = 255;
end

