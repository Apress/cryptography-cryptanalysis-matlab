clc;
disp('Generating numbers...');
clear all; close all;

rng(25);
times = 8;
noOfExp = 10;
randNums = rand(times,noOfExp);
disp(randNums);