function output = dial(input)

    [n,m] = size(input);
    
   % Check input 
    if m > 16 
        output=uint64(0);
        return
    end
    
    if sum(input == '+') >= 1 || sum(isstrprop(input,'lower')) >= 1
        output=uint64(0);
        return
    end
    
    % Classification
    input = upper(input);
    output = char(ones(size(input)));
    for i = 1:m
        if input(1,i) == 'A' || input(1,i) == 'B' || input(1,i) == 'C'
            output(1,i) = '2';
        elseif input(1,i) == 'D' || input(1,i) == 'E' || input(1,i) == 'F'
            output(1,i) = '3';
        elseif input(1,i) == 'G' || input(1,i) == 'H' || input(1,i) == 'I'
            output(1,i) = '4';
        elseif input(1,i) == 'J' || input(1,i) == 'K' || input(1,i) == 'L'
            output(1,i) = '5';
        elseif input(1,i) == 'M' || input(1,i) == 'N' || input(1,i) == 'O'
            output(1,i) = '6';
        elseif input(1,i) == 'P' || input(1,i) == 'Q' || input(1,i) == 'R' || input(1,i) == 'S'
            output(1,i) = '7';
        elseif input(1,i) == 'T' || input(1,i) == 'U' || input(1,i) == 'V'
            output(1,i) = '8';
        elseif input(1,i) == 'W' || input(1,i) == 'X' || input(1,i) == 'Y' || input(1,i) == 'Z'
            output(1,i) = '9';
        else
            output(1,i) = input(1,i);
        end
    end
    
    output=uint64(str2double(output));
    
end