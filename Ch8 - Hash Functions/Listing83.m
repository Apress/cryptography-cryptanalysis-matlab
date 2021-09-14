function my_hash_result = Listing83(data_input,hash_function)
data_input=data_input(:);
% the data input will be converted into an UINT8 format
if ischar(data_input) || islogical(data_input)
    data_input=uint8(data_input);
    
% implemented for not having any losses of the input data
else 
    data_input=typecast(data_input,'uint8');
end

% verify hash method
hash_function=upper(hash_function);
switch hash_function
    case 'SHA1'
        hash_function='SHA-1';
    case 'SHA256'
        hash_function='SHA-256';
    case 'SHA384'
        hash_function='SHA-384';
    case 'SHA512'
        hash_function='SHA-512';
    otherwise
end

al={'MD2','MD5','SHA-1','SHA-256','SHA-384','SHA-512'};
if isempty(strmatch(hash_function,al,'exact'))
    error(['Hash algorithm must be ' ...
      MD2, MD5, SHA-1, SHA-256, SHA-384, or SHA-512']);
end

% generate the hash using the mentioned algorithms
jhf=java.security.MessageDigest.getInstance(hash_function);
jhf.update(data_input);
my_hash_result=typecast(jhf.digest,'uint8');
my_hash_result=dec2hex(my_hash_result)';

% if it is the case that all hashes bytes are less than 
% 128, then perform with a padding operation
if(size(my_hash_result,1))==1 
    my_hash_result=[repmat('0',[1 size(my_hash_result,2)]);my_hash_result];
end
my_hash_result=lower(my_hash_result(:)');
clear x
return
