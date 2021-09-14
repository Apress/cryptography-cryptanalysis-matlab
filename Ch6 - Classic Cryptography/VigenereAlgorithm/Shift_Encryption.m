function OutputString = Shift_Encryption(plaintext,moduloInteger)
Array = plaintext - 'a';
OutputArray = mod( Array + moduloInteger, 26);
OutputString = char(OutputArray + 'A');