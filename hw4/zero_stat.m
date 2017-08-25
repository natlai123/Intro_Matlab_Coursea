function [zerop]= zero_stat(M)

% zero_stat takes a matrix as an input that only has 0 and 1 elements. The 
% function needs to compute and return the percentage of 0 elements in the 
% matrix. For example, if there are 10 zeros and 15 ones in a 5-by-5 matrix
% that is provided as an input to zero_stat, it would return 40 because 40%
% of the elements are zero.

zerop = (1 - (sum(sum([M]))/numel(M)))*100;

end
