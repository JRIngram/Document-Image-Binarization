# Document-Image-Binarization
An Algorithm to perform Document Image Binarization built in MATLAB.
This program contains scripts for Otsu's method and Niblack's method, as well as 4 test images and ground truth version of the images.
The PSNR can also be calculated between the ground truth and the binarized images.

*Completed as part of CS3330 - Image and Video Processing at Aston University.*

##Usage
###generate_results.m
_This will take a large amount of time to run!_
This runs a Niblack's method and Otsu's method on multiple test images.
    - Otsu's method is ran once on each image.
    - Niblack's method is ran 500 times, with varying neighbourhoods between 1 to 1000 at intervals of two (1,3,5, ..., 999).
After these have been performed, a chart will be plotted of all the PSNR values calculated each time Niblack's was used to binarize an image.
To save time this chart can be seen in [psnr1000.fig](psnr1000.fig).

###niblack.m
This binarizes an image using Niblack's method. Pseudocode for Niblack's method is:
```
	function niblack(image, neighbourhoodSize, k):
		FOR each pixel in image:
			m = meanIntensityInNeighbourhood(neighbourhoodSize);
			s = standardDeviationInNeighbourhood(neighbourhoodSize);
			threshold = m + (k * s);
			applyThresholdToPixel(threshold);
		END
	END
```
This will return an image that has been binarized by Niblack's method.

###otsu_PSNR.m
This takes a ground truth version of an image and a non-binarized image. The non-binarized image is binarized using Otsu's method and the PSNR between the binarized image and groundtruth is calculated.