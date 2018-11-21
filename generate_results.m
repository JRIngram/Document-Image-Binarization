%calculate_all_neighbour_PSNRs;
load_and_grey_test_images;

threshold = graythresh(HW1);
HW1Otsu = convert_to_binary(HW1, threshold);

threshold = graythresh(HW4);
HW4Otsu = convert_to_binary(HW4, threshold);

threshold = graythresh(PR4);
PR4Otsu = convert_to_binary(PR4, threshold);

threshold = graythresh(PR7);
PR7Otsu = convert_to_binary(PR7, threshold);

%Displays images that have been binarized using Otsu's method.
figure, image(HW1Otsu), axis off, colormap gray(2)
figure, image(HW4Otsu), axis off, colormap gray(2)
figure, image(PR4Otsu), axis off, colormap gray(2)
figure, image(PR7Otsu), axis off, colormap gray(2)