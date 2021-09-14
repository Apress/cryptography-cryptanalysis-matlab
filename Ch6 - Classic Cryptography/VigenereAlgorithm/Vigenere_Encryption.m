function output_string = Vigenere_Encryption(plaintext,encryption_key)
Array = encryption_key - 'a';
keylength = length(encryption_key);
for i=1:length(plaintext)
   ishift = mod(i,keylength);
   if ishift == 0, ishift = keylength; end
  
   output_string(i) = Shift_Encryption(plaintext(i),Array(ishift));
end