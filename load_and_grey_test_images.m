cd 'images\test_images';
HW1 = rgb2gray(imread('HW1.png'));
HW4 = rgb2gray(imread('HW4.png'));
PR4 = rgb2gray(imread('PR4.png'));
PR7 = rgb2gray(imread('PR7.png'));
RB1 = rgb2gray(imread('RB1.png'));
cd ../ground_truths

HW1GT = uint8(imread('HW1_GT.tiff'));
HW4GT = uint8(imread('HW4_GT.tiff'));
PR4GT = uint8(imread('PR4_GT.tiff'));
PR7GT = uint8(imread('PR7_GT.tiff'));
cd ../../
