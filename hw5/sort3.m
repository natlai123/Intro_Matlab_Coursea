function [x y z] = sort3(vector)

% sort3 that takes a 3-element vector as its sole arguments. It uses 
% if-statements, possibly nested, to return the three elements of the 
% vector as three scalar output arguments in non-decreasing order, i.e., 
% the first output argument equals the smallest element of the input vector 
% and the last output argument equals the largest element. NOTE: Your function
% may not use any built-in functions, e.g., sort, min, max, median, etc.

o = vector(1)
k = vector(2)
m = vector(3)

if o <= k && k <= m 
    x = o;
    y = k;
    z = m;
    
elseif k <= o && o <= m 
    x = k;
    y = o;
    z = m;

elseif m <= k && k<= o 
    x = m;
    y = k;
    z = o;

elseif o <= m && m <= k
    x = o;
    y = m;
    z = k;
      
elseif m <= o && o <= k  
    x = m;
    y = o;
    z = k;
    
elseif k <= m && k<= o 
    x = k;
    y = m;
    z = o;
    
end

%{
function [a b c] = sort3(v)
    if v(2) < v(1)
        v = [v(2) v(1) v(3)];
    end
    if v(3) < v(2)
        v = [v(1) v(3) v(2)];   % the last element is the max now
    end
    if v(2) < v(1)
        v = [v(2) v(1) v(3)];   % the first two are in order as well
    end
    a = v(1);
    b = v(2);
    c = v(3);
end
%}
