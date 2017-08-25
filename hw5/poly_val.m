function [p] = poly_val(c0, c, x)

if isempty(c)
    p = c0
elseif isscalar(c) 
    p = c0 + c*x
else 
    n = length(c)
    vx = power(x, 1:n)
    if isrow(c) 
      p = c0 + c*(vx')
    else 
      p = c0 + vx * c
    end
end

    
  