function binaryImage = convert_to_binary(uint8Image, threshold)
%CONVERTTOBINARY Converts a uint8 image to a binary image
binaryImage = imbinarize(uint8Image, threshold);
binaryImage = uint8(binaryImage);
end

