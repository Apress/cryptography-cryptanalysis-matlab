function cryptography_key=Listing91(a,b)
switch nargin
    case 0
        cryptography_key=round(rand(8,7));        
        cryptography_key(:,8)= mod(sum(cryptography_key,2)+1,2);
    case 1
        cryptography_key=cell(1,a);
        for i=1:a
            key=round(rand(8,7));
            key(:,8)= mod(sum(key,2)+1,2);
            cryptography_key{i}=key;
        end
    case 2
        if a>1
            cryptography_key=cell(2,b);
        else
            cryptography_key=cell(1,b);
        end
        for j=1:m
            key= round(rand(8,7));
            key(:,8)= mod(sum(key,2)+1,2);
            cryptography_key{1,j}=key;
            if a > 1
                cryptography_key{2,j}=round(rand(8,8));
            end
        end
end
assignin('base','GENERATE_CRYPTO_KEY',cryptography_key)