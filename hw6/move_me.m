function [w] = move_me(v,a)
%The function moves every element of v that is equal to a to the end of the 
%vector. If a is omitted, the function moves occurrences of zeros.

if nargin < 2  
    s = length(v)
    idx_to_delete = find(v==0);  
    v(idx_to_delete) = [];
    d = s -length(v) 
    j = ones(1, d)
    j(:) = 0
    w = [v j]
    
else
     s = length(v)
    idx_to_delete = find(v==a);  
    v(idx_to_delete) = [];
    d = s -length(v) 
    j = ones(1, d)
    j(:) = a
    w = [v j]
        
end

%{
function w = move_me(v,a)
    if nargin<2, 
        a = 0; 
    end
    w = [v(v ~= a) v(v == a)];
end
%}