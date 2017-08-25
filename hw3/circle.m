function [area cf] = circle(r)

% circle takes a scalar input r and returns the area of a circle with radius 
% r and a second output, cf that is the circumference of the same circle. 

area = (r^2)*pi;
cf = pi*2*r;
end