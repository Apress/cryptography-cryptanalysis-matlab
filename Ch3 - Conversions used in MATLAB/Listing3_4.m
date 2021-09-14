function output_array = Listing3_4(string_array)

for i=1:length(string_array)
   if  double(string_array(i)) > 32
       output_array(i) = double(string_array(i))-97; 
   else 
       output_array(i) = 26;
   end
end 