clc;
clear all;

fprintf("Generating matrix... \n");
min_lim = 100;
max_lim = 1000;
v = round(min_lim +(max_lim-min_lim)*rand(2,10));
disp(v);

fprintf("The length of v is %d. \n", length(v));
fprintf("The size of v is %d. \n", size(v));

fprintf("v has %d elements. \n", numel(v));
fprintf("\n");
fprintf("Sorting v... \n");
disp(sort(v));

fprintf("Sorting rows of v... \n");
disp(sortrows(v));

fprintf("Flipping v... \n");
disp(flip(v));

fprintf("Reshaping v... \n");
v2 = reshape(v, [5,4]);
disp(v2);

fprintf("Replicating v...\n");
v3 = repmat(v,2);
disp(v3);