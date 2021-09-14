%load images
encrypted_image_1 = imread('enc_image1.jpg');
encrypted_image_2 = imread('enc_image2.jpg');

% encrypted image 1
img1 = entropy(encrypted_image_1);

% encrypted image 2
img2 = entropy(encrypted_image_2);

disp(img1);
disp(img2);
