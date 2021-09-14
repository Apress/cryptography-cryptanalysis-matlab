% identifying physical on the drive the images (original and modified)
original_image = 'swan_input.jpg';
modified_image = 'swan_output.png';

% read the images and save them in o_i (original image variable) and m_i
% (modified image variable)
o_i = imread(original_image);
m_i = imread(modified_image);

% original image
subplot(1,2,1);
imhist(o_i);
title('Histogram for original image');

% new image with the message hidden
subplot(1,2,2);
imhist(m_i);
title('Histogram of the modified image');

sgt = sgtitle('Histogram Analysis','Color','blue');
sgt.FontSize = 20;