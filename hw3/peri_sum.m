function [M] = peri_sum (A)

%peri_sum computes the sum of the elements of an input matrix A that are on 
%the 'perimeter' of A. In other words, it adds together the elements that are 
%in the first and last rows and columns. Note that the smallest dimension of A
%is at least 2.

q = sum(A(1, 1:end));
a = sum(A(end, 1:end));
z = sum(A(1:end,1));
w = sum(A(1:end, end));
M =  sum ([q; w; z; a])- sum([A(1,1); A(1,end); A(end,1); A(end,end)]);
end

%function s = peri_sum(A)
    %B = A(2:end-1,2:end-1);
    %s = sum(A(:)) - sum(B(:));
%end

