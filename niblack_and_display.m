function niblack_and_display(image, neighbourhoodSize, k)
%NIBLACKANDDISPLAY Performs Niblack's method on an image and then displays
%the image.
    niblackedImage = niblack(image, neighbourhoodSize, k)
    imshow(niblackedImage);
end

