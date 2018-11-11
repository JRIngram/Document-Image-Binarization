avg_filter = fspecial('average', 100); %Creates an average filter
avg_hw1 = imfilter(HW1, avg_filter); %Averages the image
std_hw1 = stdfilt(avg_hw1); %Calculates standard deviation
k = 0.50;
k_std_h1 = k .* std_hw1;
niblack_threshold = double(avg_hw1) + k_std_h1;
threshold_hw1 = threshold(HW1, niblack_threshold);
figure, axis off, image(threshold_hw1), colormap gray(256)