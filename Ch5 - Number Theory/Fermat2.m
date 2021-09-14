tic;
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
    fprintf('The number %d might be prime. \n\n', number);
else
    fprintf('The number %d is not prime. \n\n', number);
end
toc;

function check=is_prime(x)
    check=1;
    a=generate_coprime(3,x,x);
    b=mod(power(a,sym(x-1)),x);
    if b~=1
        check=0;
    end
end

function q = generate_coprime(a,b,n)
    aux=round(a+(b-a)*rand(1,1));
    while gcd(n,aux)~=1
        aux=round(a+(b-a)*rand(1,1));
    end
    q=aux;
end