function [orms] = odd_rms(n)

%odd_rms returns the square root of the mean of the squares of the first nn
%positive odd integers, where nn is a positive integer and is the only input 
%argument. For example, if nn is 3, your function needs to compute and return
%the square root of the average of the numbers 1, 9, and 25.

x = 1:2:2*n-1;
odv = x(rem(x,2)==1);
sqodv = odv.^2;
averageodd = (sum(sqodv))./n;
orms = sqrt(averageodd);

%function or = odd_rms(nn)
 %   or = sqrt(mean((1:2:2*nn).^2));
%end




