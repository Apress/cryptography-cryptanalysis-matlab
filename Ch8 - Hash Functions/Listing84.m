hash_algorithms={'MD2','MD5','SHA-1','SHA-256','SHA-384','SHA-512'};

disp('Welcome to Apress!');
disp('------------------');
disp('The following text will be hashed using the hash algorithms from below');
disp('The text is: Good luck with Hash Functions!');
disp(' ');

for n=1:6
    my_hash_result = Listing83('Good luck with Hash Functions!',hash_algorithms{n});
    disp([hash_algorithms{n} ' (' num2str(length(my_hash_result)*4) ' bits):'])
    disp(my_hash_result)
end