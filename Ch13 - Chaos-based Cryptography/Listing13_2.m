clear all;

%load two encrypted images for computing UACI
encrypted_image1=imread('enc_image1.jpg');
encrypted_image2=imread('enc_image2.jpg');

%compute the size of the first image
[rows,columns]=size(encrypted_image1);

%create a matrix with rows and columns
first_step=zeros(rows,columns);

%acording to the formula presented above
for i=1:1:rows
    for j=1:1:columns
       if(encrypted_image1(i,j)>encrypted_image2(i,j))    
           first_step(i,j)=(encrypted_image1(i,j)-encrypted_image2(i,j));
       else
           first_step(i,j)=(encrypted_image2(i,j)-encrypted_image1(i,j));
       end
    end
end

first_step=first_step/255;

%computing the next step
second_step=0;
for i=1:1:rows
    for j=1:1:columns
     second_step=second_step+step(i,j);
    end
end

% the last step is multiplying the result of division between second step and
% the product of rows with columns, with 100 - according 
uaci=(second_step/(rows*columns))*100

% encryption image 1
subplot(1,2,1);
imshow('enc_image1.jpg');
title('Encrypted Image 1');

% encryption image 2
subplot(1,2,2);
imshow('enc_image2.jpg');
title('Encrypted Image 2');


