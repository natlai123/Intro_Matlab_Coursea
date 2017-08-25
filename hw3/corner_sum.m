function [xyz] = corner_sum(M)

% corner_sum takes an input matrix and returns the sum of the four 'corner'
% elements. 

xyz = M(1, 1) + M(1, end) + M(end, 1) + M(end, end);
end