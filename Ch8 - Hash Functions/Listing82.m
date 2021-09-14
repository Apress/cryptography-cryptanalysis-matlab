clear; clc;
random_group_people = 100;            % set the size of the group to 100 random people
A = ones(100, random_group_people);   % initialize array A to all 1's
probability = 1;                      % initialize since probability for only 1 person is 1

   for i = 1 : 100                                  % begin for loop
       A(i) = 1 - probability;                      % each element of A assigned a probability
       probability = probability * (365 -i)/365;   % then calculate new probability and repeat
   end                                              % end for loop
   
plot(A, 'green')   % plot the number of people vs. the probability
title('The probability that two people to have the same birthday from a group of 100 people');
xlabel('The size of the group of people');
ylabel('Probability for the same birthday');