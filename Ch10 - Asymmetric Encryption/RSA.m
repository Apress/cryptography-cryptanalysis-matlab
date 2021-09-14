clc;
disp('RSA Algorithm');
clear all; close all;

%p = input('\nEnter the first prime number (p) : ');
%q = input('Enter the second prime number (q) : ');

p=generate_prime(sym(2)^10,sym(2)^11);
fprintf('Computed value (p): %d\n', p);

q=generate_prime(sym(2)^10,sym(2)^11);
fprintf('Computed value (q): %d \n', q);

fprintf('\n')

n=p*q;
fprintf('Computed value (n): %d\n', n);

phi_n=(p-1)*(q-1);
fprintf('Computed value (phi_n): %d\n', phi_n);

e=-1;
val=round(1+(phi_n-1)*rand(1,1));
if gcd(val,phi_n) ~= 1 
    while gcd(val,phi_n) ~= 1 || val ==1
        val=round(1+(phi_n-1)*rand(1,1));        
        if gcd(val,phi_n) == 1 
            e=val;
            break;
        end
    end
end

fprintf('Computed value (e): %d\n', e);

[aux, aux2, ~] = gcd(e,phi_n);
if aux==1  
    d = mod(aux2,phi_n);
    fprintf('Computed value (d): %d\n', d);  
else
    disp('Value (d) cannot be computed');
end

fprintf('\n');
fprintf('Public key: (%d, %d)\n', n, e);
fprintf('Public key: (%d, %d, %d, %d)\n', p, q, phi_n, d);


plain_message = input('\nEnter the message to be sent (m < n): ');
if plain_message>n
    disp('The message (m) should be less than (n).');
    return;
end
encrypted_message=power(sym(plain_message), e);
encrypted_message=mod(encrypted_message, n);
disp('Encrypted message:  ');
disp(encrypted_message);

decrypted_message=power(sym(encrypted_message), d); 
decrypted_message=mod(decrypted_message, n);
disp('Decrypted message:  ');
disp(decrypted_message);

function q = generate_prime(a,b)
    aux=round(a+(b-a)*rand(1,1));
    while is_prime(aux) == 0
        aux=round(a+(b-a)*rand(1,1));
    end
    q=aux;
end

function check=is_prime(x)
    check=1;
    for i = 2:sqrt(x)
        if mod(x,i) == 0
            check=0;
            return;
        end
    end
end