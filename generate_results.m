clear;
%Loads and greyscales all the test images.
load_and_grey_test_images;

%Binarizes images using Otsu's method
threshold = graythresh(HW1);
HW1Otsu = imbinarize(HW1, threshold);
threshold = graythresh(HW4);
HW4Otsu = imbinarize(HW4, threshold);
threshold = graythresh(PR4);
PR4Otsu = imbinarize(PR4, threshold);
threshold = graythresh(PR7);
PR7Otsu = imbinarize(PR7, threshold);
otsu_PSNR_all;
clear threshold; %Removes threshold from memory

k = -0.2; %K constant value
%Binarize images using Niblack's method, with lowest PNSR neighbourhood.
HW1NibMin = niblack(HW1, 3, k);
HW4NibMin = niblack(HW4, 3, k);
PR4NibMin = niblack(PR4, 5, k);
PR7NibMin = niblack(PR7, 5, k);

%Binarize images using Niblack's method, with greatest PNSR neighbourhood.
HW1NibMax = niblack(HW1, 537, k);
HW4NibMax = niblack(HW4, 665, k);
PR4NibMax = niblack(PR4, 875, k);
PR7NibMax = niblack(PR7, 573, k);
clear k; %Removes k from memory

%Displays images that have been binarized using Otsu's method.
figure, image(HW1Otsu), axis off, colormap gray(2), title('HW1 Binarized using Otsu''s method');
figure, image(HW4Otsu), axis off, colormap gray(2), title('HW4 Binarized using Otsu''s method');
figure, image(PR4Otsu), axis off, colormap gray(2), title('PR4 Binarized using Otsu''s method');
figure, image(PR7Otsu), axis off, colormap gray(2), title('PR7 Binarized using Otsu''s method');

%Displayed Images that have been binarized using Niblack's method (with a
%small neighbourhood size).
figure, image(HW1NibMin), axis off, colormap gray(2), title('HW1 Binarized using Niblacks''s method with a neighbourhood size of 3');
figure, image(HW4NibMin), axis off, colormap gray(2), title('HW4 Binarized using Niblacks''s method with a neighbourhood size of 3');
figure, image(PR4NibMin), axis off, colormap gray(2), title('PR4 Binarized using Niblacks''s method with a neighbourhood size of 5');
figure, image(PR7NibMin), axis off, colormap gray(2), title('PR7 Binarized using Niblacks''s method with a neighbourhood size of 5');

%Displayed Images that have been binarized using Niblack's method (with a
%large neighbourhood size).
figure, image(HW1NibMax), axis off, colormap gray(2), title('HW1 Binarized using Niblacks''s method with a neighbourhood size of 537');
figure, image(HW4NibMax), axis off, colormap gray(2), title('HW4 Binarized using Niblacks''s method with a neighbourhood size of 665');
figure, image(PR4NibMax), axis off, colormap gray(2), title('PR4 Binarized using Niblacks''s method with a neighbourhood size of 875');
figure, image(PR7NibMax), axis off, colormap gray(2), title('PR7 Binarized using Niblacks''s method with a neighbourhood size of 573');

%Creates figure to display PSNR value for different neighbourhood sizes.
%This may take some time to run: see psnr1000.fig to see the results
%without running this script.
calculate_all_neighbourhood_PSNRs;