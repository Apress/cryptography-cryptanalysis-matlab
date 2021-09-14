function converted_output_string = Listing3_2(integer_array)

while  (max((integer_array < 0) | (integer_array > 25))) > 0
   error('The integer value provided has to be situated between 0 and 25. Please, try again!');
end

converted_output_string = char(integer_array + 'A');