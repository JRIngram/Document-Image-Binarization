function binarizedImage = otsuAndDisplay(image)
%OTSUANDDISPLAY Performs Otsu's method on an image and then displays
%the image.
    threshold = graythresh(image);
    binarizedImage = imbinarize(image, threshold)
    imshow(binarizedImage)
end

