%reading the encrypted images
enc_image1=imread('enc_image1.jpg');
enc_image2=imread('enc_image2.jpg');

% compute the size of the of encrypted image 
% and assigned as rows and columns
[rows,columns]=size(enc_image1);
step=0;
for i=1:1:rows
    for j=1:1:columns
        if(enc_image1(i,j)~=enc_image2(i,j)) step=step+1;
        else step=step+0;            
        end
    end
end

NPCR =(step/(rows*columns))*100

% encryption image 1
subplot(1,2,1);
imshow('enc_image1.jpg');
title('Encrypted Image 1');

% encryption image 2
subplot(1,2,2);
imshow('enc_image2.jpg');
title('Encrypted Image 2');
