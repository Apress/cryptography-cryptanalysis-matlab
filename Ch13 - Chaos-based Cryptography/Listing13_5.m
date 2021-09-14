%corellation on vertical
clc;
clear all;

%control parameters
ctrl_p_1=0;
ctrl_p_2=0;
indexJ = 1;
indexI = 1;

%load the image for which the corellation should be performed
encrypted_image=imread('enc_image1.jpg');

%use the encrypted image and represented it as a RGB version and not as a
%grayscale version conversion
representation_as_rgb=encrypted_image;

%computing the size in order to represented as a matrix of rows and columns
[rows,columns]=size(representation_as_rgb);

%compute the total length by multiplying rows with columns
total_length=rows*columns;

%generate structure with zeroes from 1 to 10240 (256*40)
x_axis=zeros(1,(256*40));
y_axis=zeros(1,(256*40));

while indexJ <= 80
   while indexI <= rows      
       if(mod(indexJ,2)==0)
           ctrl_p_1=ctrl_p_1+1;
           x_axis(1,ctrl_p_1)=representation_as_rgb(indexI,indexJ);
           indexI = indexI+1;
           indexJ = indexJ+1;
           disp(x_axis(1,ctrl_p_1));
       else
           ctrl_p_2=ctrl_p_2+1;
           y_axis(1,ctrl_p_2)=representation_as_rgb(indexI,indexJ);
           indexI = indexI+1;
           indexJ = indexJ+1;
           disp(y_axis(1,ctrl_p_2));
       end           
   end      
end

%figure
scatter(x_axis,y_axis,2)
title('Encrypted image 1 - Enc(Img1) - vertical correlation');
ENC_IMG1 = corrcoef(x_axis,y_axis)