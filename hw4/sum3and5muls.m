function [sum35] = sum3and5muls(n)

% sum3and5muls returns the sum of all the unique multiples of 3 or 5 up to 
% n where n is a positive integer and the only input argument of the 
% function. (Credit: Project Euler)

x = [1:n];
sum3 = x(rem(x,3)==0);
sum5 = x(rem(x,5)==0);
g = sort([sum3 sum5]);
h = unique(g);
sum35 = sum(h);

end
