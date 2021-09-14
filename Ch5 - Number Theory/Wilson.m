fprintf('\nTesting the primality of a positive integer...');
clear all; close all;

number = input('\nEnter the number to be tested: ');
if number<2
    disp('The number should be greater than 2. \n');
    return;
end

if number ~= round(number)
    disp('The number should be a positive integer. \n');
    return;
end

if is_prime(number) == 1
    fprintf('The number %d is prime. \n\n', number);
else
    fprintf('The number %d is not prime. \n\n', number);
end

function check=is_prime(x)
    check=0;
    fact=factorial(sym((x-1)));    
    if mod(fact+1,x) == 0
        check=1;
    end
end