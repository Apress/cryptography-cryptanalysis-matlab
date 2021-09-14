function output_array = Listing3_3(string_array)

while (max((string_array < 'a') + (string_array > 'z'))) > 0   
   error('The integer value provided has to contain lower-case letter.');
end

output_array = string_array - 'a';
