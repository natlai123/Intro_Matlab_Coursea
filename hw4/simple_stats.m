function [S] = simple_stats(N)

% simple_stats takes a matrix N as an input and returns the matrix S as the 
% output. S has the same number of rows as N. Each element of the first
% column of S contains the mean of the corresponding row of N. Similarly, 
% the second column contains the median values; while the third column has 
% the minimums. Finally, each element of the fourth column of S is equal 
% to the maximum value of given row of N.

[q w] = size(N);
S = ones(q, 4);
S(1:end,1) = mean(N,2);
S(1:end,2) = median(N,2);
S(1:end,3) = min(N,[],2);
S(1:end,4) = max(N,[],2);

end
