function binaryImage = convert_to_binary(uint8Image)
%CONVERT_TO_BINARY Converts a uint8 image to a binary image
binaryImage = imbinarize(uint8Image);
binaryImage = uint8(binaryImage);
end

