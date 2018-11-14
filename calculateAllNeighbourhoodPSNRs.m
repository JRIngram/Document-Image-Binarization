%Calculates the PSNR values for all test images over a range of
%neighbourhood sizes.
%   This will take a long time to run as it's running the Niblack Method
%   750 times for each image.
clear;
load_and_grey_test_images;
n = [1:2:750];
PSNRHW1 = calculateNeighbourhoodPSNRs(HW1,HW1GT);
PSNRHW4 = calculateNeighbourhoodPSNRs(HW4,HW4GT);
PSNRPR4 = calculateNeighbourhoodPSNRs(PR4,PR4GT);
PSNRPR7 = calculateNeighbourhoodPSNRs(PR7,PR7GT);
plot(n,PSNRHW1, n,PSNRHW4, n,PSNRPR4, n,PSNRPR7), xlabel('Neighbourhood Size'), ylabel('PSNR'), legend('HW1','HW4','PR4','PR7')
clear n;