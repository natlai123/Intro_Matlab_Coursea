function [x] = spiral_diag_sum(odd)
if odd == 1 
    x = 1 
else
    x = 0
for n = 3:2:odd
    x = x + (n^2) + (n^2-2*n+2) + (n^2-n+1) + (n^2-3*n+3)
end 
x = x +1
end

%{
function s = spiral_diag_sum(n)
%   The last element is always n square and it is in the corner.
%   A simple arithmetic expression gives the sum of the four corners.
%   Do this for a series of odd numbers from 3 to n.
%   Add 1 for the starting value in the center

    v = 3:2:n;
    s = 1 + sum(4*v.^2 - 6*(v-1)); 
end
%}
