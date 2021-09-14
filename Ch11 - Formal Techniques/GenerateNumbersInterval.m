clc;
disp('Generating numbers interval...');
clear all; close all;

rng(25);
times = 8;
noOfExp = 10;
minVal = 100;
maxVal = 1000;
randNums = round(minVal+(maxVal-minVal)*rand(times,noOfExp));
disp(randNums);