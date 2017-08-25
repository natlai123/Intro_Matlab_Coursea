function [unpack] = logiunpack(incell)

% The input is a cell array with 4 elements, so the output is going to be a 4 x 4 
% logical matrix. The first element of the input is an empty array, so that means 
% there are no "true" values on the first row of the output. The second element 
% of the input is an array with two values: 1 and 4. That means the second row 
% of the output has "true" values in positions (indices) 1 and 4. And so on.
 
[x, y] = size(incell);
unpack = logical(zeros(max(x,y),max(x,y)));
for r = 1:max(x,y)
  if isempty(incell{r}) == 0   
   unpack(r,incell{r})=true;
  end
end

end

