function threshold_matrix = threshold( img_matrix,threshold )
    threshold_matrix = img_matrix;
    threshold_matrix(threshold_matrix<threshold) = 0;
    threshold_matrix(threshold_matrix>threshold | threshold_matrix == threshold) = 255;
end

