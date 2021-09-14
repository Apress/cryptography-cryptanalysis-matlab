function array_output = Listing3_6(min, max, length)
f = floor(max+1-min);
r = rand(1,length);
array_output = min + (f * r);