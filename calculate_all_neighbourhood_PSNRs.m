%Calculates the PSNR values for all test images over a range of
%neighbourhood sizes.
%   This will take a long time to run as it's running the Niblack Method
%   500 times for each image.
n = [1:2:999];
disp('Calculating the PSNR values for all 4 test images, where Niblack''s is used. Neighbourhood sizes are used between 1 to 1000')
disp('This may take some time to run...')
disp('Calculating PSNRs for HW1...')
PSNRHW1 = calculate_neighbourhood_PSNRs(HW1,HW1GT);
disp('Calculating PSNRs for HW4...')
PSNRHW4 = calculate_neighbourhood_PSNRs(HW4,HW4GT);
disp('Calculating PSNRs for PR4...')
PSNRPR4 = calculate_neighbourhood_PSNRs(PR4,PR4GT);
disp('Calculating PSNRs for PR7...')
PSNRPR7 = calculate_neighbourhood_PSNRs(PR7,PR7GT);
plot(n,PSNRHW1, n,PSNRHW4, n,PSNRPR4, n,PSNRPR7), xlabel('Neighbourhood Size'), ylabel('PSNR'), legend('HW1','HW4','PR4','PR7'), title({'PSNR of Niblacked images vs. Ground Truth images'; 'with different Neighbourhood Sizes used'});
clear n;