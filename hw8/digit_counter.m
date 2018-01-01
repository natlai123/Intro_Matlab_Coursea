function out = digit_counter(filename)

% digit_counter takes the name of a text file as input and returns the 
% number of digits (i.e., any of the characters, 0-to-9) that the file 
% contains. If there is a problem opening the file, the function returns -1.

fid = fopen(filename,'rt');

if fid < 0
    out = -1;
return;
else
    A = fread(fid,inf);
    out = sum(isstrprop(A,'digit'));
    fclose(fid);
end    
        
end