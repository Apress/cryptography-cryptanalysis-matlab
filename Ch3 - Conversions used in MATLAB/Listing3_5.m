function output_array = Listing3_5(string_array)

while (max((string_array < 'A') + (string_array > 'Z'))) > 0
   error('The text provided must be only capital letters');
end

output_array = string_array - 'A';
