function N = top_right(N, n)

%top_right takes two inputs: a matrix N and a scalar non-negative 
%integer n, in that order, where each dimension of N is greater than or
%equal to n. The function returns the n-by-n square array at the top 
%right corner of N.

N= N(1:n,(end-n+1):end);
end


