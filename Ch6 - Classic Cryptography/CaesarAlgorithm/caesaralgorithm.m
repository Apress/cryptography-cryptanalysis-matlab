function console_output = caesaralgorithm()
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o','p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']; 
    clear_text = input('Enter a phrase that you wish to encrypt it (eliminate the spaces): ','s'); %our input
    key = input('Enter the key: '); 
    exception_message = 'There is an invalid input. Please restart the program.';
    
    if key > 26 || key < 0
        key = mod(key,26); 
    end
    
    breaking_loop = 0; 
    iteration_flag = 1; 
    
    while iteration_flag <= length(clear_text) 
        if ismember(clear_text(iteration_flag),'A':'Z') == 1 
            breaking_loop = 1; 
            console_output = exception_message;
            
        elseif isletter(clear_text(iteration_flag)) == 1 
            y = strfind(alphabet,clear_text(iteration_flag)); 
            z = y+key; 
                if z > 26 
                    z = z - 26;
                end
            console_output(iteration_flag) = alphabet(z); 

        elseif isletter(clear_text(iteration_flag)) == 0
            if plain(iteration_flag) == ' ' 
                console_output(iteration_flag) = clear_text(iteration_flag);
            else
                breaking_loop = 1;
                console_output = exception_message;
            end
        end
        
        iteration_flag = iteration_flag+1; 
        if breaking_loop == 1
            break
        end
    end
end



