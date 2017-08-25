function [even] = even_index(M)

%even_index takes a matrix, M, as input argument and returns a matrix 
%that contains only those elements of M that are in even rows and columns. 
%In other words, it would return the elements of M at indices (2,2), (2,4), 
%(2,6), ?, (4,2), (4,4), (4,6), ?, etc. Note that both the row and the column 
%of an element must be even to be included in the output. 

%As an example, if M were a 5-by-8 matrix, then the output must be 2-by-4 
%because the function omits rows 1, 3 and 5 of M and it also omits columns 
%1, 3, 5, and 7 of M.


even = [M(2:2:end,2:2:end)];
end