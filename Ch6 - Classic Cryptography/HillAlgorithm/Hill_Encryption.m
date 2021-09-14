function console_output = Hill_Encryption(plaintext,matrix)

[n n] = size(matrix);
Array = plaintext - 'a';
array_length = length(Array);  
append_array_length = mod(array_length,n); %if this is postive, we need to append on the plaintext vector 
                                           %to make its length a multiple of n
if append_array_length > 0
    add_length = n - append_array_length;
    Array(array_length + 1: array_length + add_length) = 13;
end

columns_number = length(Array)/n;
reshaped_array = reshape(Array, [n columns_number]);
ciphertext = mod(matrix*reshaped_array,26);
array_output = ciphertext(:)';
console_output = char(array_output + 'A');


