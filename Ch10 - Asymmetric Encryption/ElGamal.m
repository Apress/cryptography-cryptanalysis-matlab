clc;
disp('ElGamal Algorithm');
clear all; close all;

q=generate_prime(sym(2)^10,sym(2)^11);
disp('Computed value (q):  ');
disp(q)

g=round(1+((q-1)-1)*rand(1,1));
disp('Computed value (g):  ');
disp(g);

x=round(1+((q-1)-1)*rand(1,1));
disp('Computed value (x):  ');
disp(x);

h=power(sym(g),x);
disp('Computed value (h):  ');
disp(h);

plain_message = input('\nEnter the message to be sent (m < q): ');
if plain_message>q
    disp('The message (m) should be less than (q).');
    return;
end

fprintf('\nEncrypting...\n');

y=round(1+((q-1)-1)*rand(1,1));
disp('Computed value (y):  ');
disp(y);

s=power(sym(h),y);
disp('Computed value (s) [shared secret - sender]:  ');
disp(s);

c1=power(sym(g),y);
disp('Computed value (c1):  ');
disp(c1);

c2=plain_message*s;
disp('Computed value (c2):  ');
disp(c2);

disp('Encrypted message has two components:  ');
fprintf('      c1 = %sym.\n', c1);
fprintf('      c2 = %sym.\n', c2);

fprintf('\nDecrypting...');

ss=power(sym(c1),x);
fprintf('\nComputed value (ss) [shared secret - receiver]:  ');
disp(ss);

inv_s = compute_inverse(ss,q);
if inv_s == -1
    disp('Wrong setup. Retry.');
    return;
end
disp('Computed value (ss^-1):  ');
disp(inv_s);

decrypted_message=mod(c2*inv_s,q);
disp('Decrypted message  ');
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

function inv = compute_inverse(a,b)
    [aux, aux2, ~] = gcd(a,b);
    if aux==1  
        inv = mod(aux2,b);       
    else
        inv = -1;
    end
end