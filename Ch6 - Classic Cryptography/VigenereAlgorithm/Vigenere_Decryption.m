function output_vigenere_decryption = Vigenere_Decryption(plaintext,decryptionKey)

Array = decryptionKey - 'a';
decryption_key = length(decryptionKey);
lowercase_string = char((plaintext - 'A') + 'a'); 
for i=1:length(plaintext)
   ishift = mod(i,decryption_key);
   if ishift == 0, ishift = decryption_key; end 
   output_vigenere_decryption(i) = Shift_Encryption(lowercase_string(i),-Array(ishift));
end
output_vigenere_decryption = char((output_vigenere_decryption - 'A') + 'a');

