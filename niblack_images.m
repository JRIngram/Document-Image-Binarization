clear;
load_and_grey_test_images;

%Best values as defined by Valverde and Grigat in Optimum Binarization of
%Technical Document Images (200)
nSize = 15; %neighbourhoodSize
k = -0.2;
niblackHW1 = niblack(HW1, nSize, k);
niblackHW4 = niblack(HW4, nSize, k);
figure, image(HW4), axis off, colormap gray(256);
niblackPR4 = niblack(PR4, nSize, k);
niblackPR7 = niblack(PR7, nSize, k);
figure, image(niblackHW1), axis off, colormap gray(256);
figure, image(niblackHW4), axis off, colormap gray(256);
figure, image(niblackPR4), axis off, colormap gray(256);
figure, image(niblackPR7), axis off, colormap gray(256);
