%Performs Otsu's method on all images and calulcates the PSNR for all of
%these images and the ground truths.
HW1OtsuPsnr = otsu_PSNR(HW1, HW1GT);
HW4OtsuPsnr = otsu_PSNR(HW4, HW4GT);
PR4OtsuPsnr = otsu_PSNR(PR4, PR4GT);
PR7OtsuPsnr = otsu_PSNR(PR7, PR7GT);