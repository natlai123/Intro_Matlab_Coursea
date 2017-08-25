function [w] = flip_it(v)

% flip_it is a vector_version of Matlab build-in function, fliplr.

w = v(1, end:-1:1);
end 
