function [H] = reverse_diag(n)

%reverse_diag creates a square matrix whose elements are 0 except for 1s on
%the reverse diagonal from top right to bottom left. The reverse diagonal of
%an n-by-n matrix consists of the elements at the following indexes: (1, n), 
%(2, n-1), (3, n-2), ? (n, 1). The function takes one positive integer inpu
%t argument named n, which is the size of the matrix, and returns the matrix 
%itself as an output argument.

M = zeros(n,n);
M(1:n+1:end) = 1;
H = flip(M);

end
