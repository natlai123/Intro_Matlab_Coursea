function indexes = small_elements(matrix) 
persistent i 
i = 0
[row, col] = size(matrix)
ind = zeros(row*col, 2)


for y = 1:col 
    for x = 1: row
       if x*y > matrix(x,y) 
          for i = i + 1 
             ind(i,:) = [x y] 
          end          
       end
    end
end

if ind == [0]
    indexes = []
else
 %   ind(ind==0) = []
 %  indexes = ind
indexes = ind

if min(indexes)==0
indexes(indexes==0)=[]
indexes = reshape(indexes, ((length(indexes))/2), 2)

end
end

%{
function I = small_elements(X)
%   The matrix multiplication of a column vector of the row numbers and 
%   a row vector of the column numbers gives the indices of the matrix. 
    [r,c] = size(X);
    [x,y] = find(X < ((1:r)' * (1:c)));
    I = [x(:), y(:)];
end
%}

