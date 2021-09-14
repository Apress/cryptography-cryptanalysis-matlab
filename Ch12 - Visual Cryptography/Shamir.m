clear all;
clc;
original = imread('apress.JPG');
black_white = imbinarize(rgb2gray(original));

[bw_row0,bw_col0]=size(black_white);
share_1=num2cell(ones(bw_row0,bw_col0));
share_2=share_1;
for i = 1:bw_row0
    for j = 1:bw_col0
        if black_white(i,j)==0
            rand_pixel = randsrc(1,1,[0 1; 0.5 0.5]);              
            share_1{i,j}=[rand_pixel ~rand_pixel];
            share_2{i,j}=[rand_pixel ~rand_pixel];
        else
            rand_pixel = randsrc(1,1,[0 1; 0.5 0.5]);   
            share_1{i,j}=[rand_pixel ~rand_pixel];
            share_2{i,j}=[~rand_pixel rand_pixel];         
        end
    end
end

figure;
imshow(black_white);
title('Black-white image');

figure;
imshow(cell2mat(share_1));
title('First Share');

figure;
imshow(cell2mat(share_2));
title('Second Share');

figure;
recovered=cell2mat(share_1)+cell2mat(share_2);
imshow(recovered);
title('Recovered image: Overlapping Share 1 and Share 2');