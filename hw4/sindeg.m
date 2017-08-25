function [M, s] = sindeg(deg)

% sindeg takes a matrix input called deg. The function returns a matrix of 
% the same size as deg with each of its elements containing the sine of the
% corresponding element of deg. Note that the elements of deg are given in
% degrees and not radians. As a second output, the function returns a scalar
% that contains the average value of the first output.

[n,m] = size(deg);
K = (pi/180)*(deg);
M = sin(K);
G = M(:);
s = (sum(G))/(n*m);

end

