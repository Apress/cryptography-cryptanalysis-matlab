clc;
clear all;

no1 = 25;
bin1 = dec2bin(no1);
fprintf("The binary value of %d is: %s. \n", no1, bin1);
no2 = -65;
bin1 = dec2bin(no2);
fprintf("The binary value of %d is: %s. \n", no2, bin1);
fprintf("\n");

no3 = 1739;
set_res = bitset(no3, 5);
fprintf("Changing the second bit of %d to 1 results in: %d. \n", no3, set_res);
fprintf("\n");

get_res = bitget(no3,3);
fprintf("The binary value of %d is %s and the 3rd bit is %d. \n", no3, dec2bin(no1), get_res);
fprintf("\n");

no4 = round(2000 +(10000-2000)*rand(1,1));
shift_res = bitshift(no4, 5);
fprintf("Shifting 5 bits to left of %d (%s) results in %d (%s). \n", no4, dec2bin(no4), shift_res, dec2bin(shift_res));
shift_res2 = bitshift(no4, -5);
fprintf("Shifting 5 bits to right of %d (%s) results in %d (%s). \n", no4, dec2bin(no4), shift_res2, dec2bin(shift_res2));
shift_res = bitshift(0-no4, 5, 'int64');
fprintf("Shifting 5 bits to left of %d (%s) results in %d (%s). \n", no4, dec2bin(no4), shift_res, dec2bin(shift_res));
shift_res2 = bitshift(0-no4, -5, 'int64');
fprintf("Shifting 5 bits to right of %d (%s) results in %d (%s). \n", no4, dec2bin(no4), shift_res2, dec2bin(shift_res2));
fprintf("\n");

cmp_res = bitcmp(no4, 'int64');
fprintf("The bit-wise complement of %d (%s) is %d (%s). \n", no4, dec2bin(no4), cmp_res, dec2bin(cmp_res));
fprintf("\n");

no5 = round(2000 +(10000-2000)*rand(1,1)); 
fprintf("%d (%s) OR %d (%s) = %d (%s) \n", no4, dec2bin(no4), no5, dec2bin(no5), bitor(no4,no5), dec2bin(bitor(no4,no5)));
fprintf("%d (%s) AND %d (%s) = %d (%s) \n", no4, dec2bin(no4), no5, dec2bin(no5), bitand(no4,no5), dec2bin(bitand(no4,no5)));
fprintf("%d (%s) XOR %d (%s) = %d (%s) \n", no4, dec2bin(no4), no5, dec2bin(no5), bitxor(no4,no5), dec2bin(bitxor(no4,no5)));
fprintf("\n");

no6 = 0x134DF5ED;
swap_res = swapbytes(no6);
fprintf("Number  %d (%s) swapped is %d (%s). \n", no6, dec2hex(no6), swap_res, dec2hex(swap_res));
