%load images
encrypted_image_1 = imread('enc_image1.jpg');
encrypted_image_2 = imread('enc_image2.jpg');

% encrypted image 1
subplot(1,2,1);
imhist(encrypted_image_1);
title('Histogram for encrypted image 1');

% encrypted image 2
subplot(1,2,2);
imhist(encrypted_image_2);
title('Histogram for encrypted image 2');