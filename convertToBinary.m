function binaryImage = convertToBinary(uint8Image)
%CONVERTTOBINARY Converts a uint8 image to a binary image
binaryImage = imbinarize(uint8Image);
binaryImage = uint8(binaryImage);
end

