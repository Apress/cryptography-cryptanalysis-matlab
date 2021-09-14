clc;
clear variables;

% variables
binary_representation = '';
image = '';
hidden_image = '';
rValues = '';
cValues = '';
ccValues = '';
string_length = '';
ascii_representation = '';
ascii_binary_representation = '';
control_bit=''; % used to count how many bits were hidden

% read the image used for hidden process, 
% convert it to the grayscale if the image is RGB
image=imread('swan_input.jpg');

% compute the size of the image and store the
% values for rows, columns and color of channels
% rValues - rows number/value
% cValues - columns number/value
% ccValues - number of the color channels
[rValues, cValues, ccValues] = size(image);

% provide the conversion from color to grayscale if the color channels
% number is bigger and strict with 1
if ccValues > 1
    image = rgb2gray(image);
end

% initialize the image that will be used for hiding with the image obtained
% due to the conversion process from color to grayscale.
hidden_image=image;

% read the message that will be hide within the images
hidden_message=input('Provide a message that will be hidden in the image: ','s');

% very important stept is to understand that each character from the
% message entered by the user is represented as 1 byte = 8 bits. 
% we will require to compute the length of the entire message by mutiplying
% it's length with 8 (bits).
string_length=strlength(hidden_message)*8; 

% compute the ascii values by computing unsigned integer values with only 8
% bits of information for the hidden message entered above.
ascii_representation=uint8(hidden_message);   

% convert the decimal to binary the ascii values with only 8 bits of
% information and store them in 
ascii_binary_representation=dec2bin(ascii_representation,8);
 
% store the binary values of ascii value as a string
for i=1:strlength(hidden_message)
    binary_representation=append(binary_representation,ascii_binary_representation(i,:));
end 

for i=1:rValues              % row index
    for j=1:cValues          % column index
        control_bit=1;
        if control_bit<=string_length            
            % compute using modulo 2 the grey level for each of the pixel
            modulo = mod(image(i,j),2);
            least_significant_bit=modulo;
            
            %Convert the bit from the message to numeric form
            
            % compute the binary representation of the bit that represents
            % the numeric form
            binaryRepresentation = binary_representation(control_bit);
            
            % convert string to double for the binary representation
            doubleBinaryRepresentation=str2double(binaryRepresentation);
 
            % compute the XOR for the bit and least significant bit
            xor_temp = xor(least_significant_bit,doubleBinaryRepresentation);            
            xor_temp_to_double = double(xor_temp);
            
            % Change the bit of the image_hide accordingly
            % compute the addition between the pixel and xor double value
            addition_pixel_xor = image(i,j)+xor_temp_to_double;
            
            % add the addition result to a specific 
            % pixel from the hidden image
            hidden_image(i,j) = addition_pixel_xor;
            
            % move to the next bit
            control_bit=control_bit+1;
        end
    end
end

% original image representation
subplot(1,2,1);
imshow(image);
title('Original image');

% new image with the message hidden
subplot(1,2,2);
imshow(hidden_image);
title('Hidden image');

sgt = sgtitle('Hidding information to image using LSB method','Color','blue');
sgt.FontSize = 20;

imwrite(hidden_image,'swan_output.png')