function x = find_zero(f,x1,x2)

% The goal of the function is to find an x that lies in the range from x1 
% to x2 such that after the command, y = f(x), is executed inside the 
% function find_zero, y is approximately zero as defined by abs(y) < 1e-10

% Step 1: Find the midpoint to search for x in the interval between x1 and x2 
% Step 2: Check if x satisfies the condition f(x) close to zero

   x = (x1+x2)/2;              
   while abs(f(x)) > 1e-10     
        if f(x1)*f(x)>0    % Same sign means x_midpoint is closer to x1. Move x1 to the left.
            x1 = x;               
        else          % Diferent sign means x_midpoint is closer to x2. Move x2 to the right.
            x2 = x;            
        end
        x = (x1+x2)/2;       % reset for next iteration   
    end
end