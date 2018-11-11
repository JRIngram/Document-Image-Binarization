cd 'images\test_images';
HW1 = rgb2gray(imread('HW1.png'));
%HW4 = rgb2gray(imread('HW4.png'));
%PR4 = rgb2gray(imread('PR4.png'));
%PR7 = rgb2gray(imread('PR7.png'));
%figure, image(HW1), axis, colormap gray(256);
%figure, image(HW4), axis, colormap gray(256);
%figure, image(PR4), axis, colormap gray(256);
%figure, image(PR7), axis, colormap gray(256);
cd ../ground_truths

HW1GT = uint8(imread('HW1_GT.tiff'));
HW4GT = uint8(imread('HW4_GT.tiff'));
PR4GT = uint8(imread('PR4_GT.tiff'));
PR7GT = uint8(imread('PR7_GT.tiff'));
%figure, image(HW1GT), axis, colormap gray(2)
%figure, image(HW4GT), axis, colormap gray(2)
%figure, image(PR4GT), axis, colormap gray(2)
%figure, image(PR7GT), axis, colormap gray(2)
cd ../../
