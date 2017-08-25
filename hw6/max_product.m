function [product, ind] = max_product(v,n)

if n > length(v)
  ind = -1;
  product = 0;
  return;
end

product = -Inf;
for ii = 1:length(v)-n+1
  mult3 = prod(v(ii:ii+n-1));
   if mult3 > product
     product = mult3 
     ind = ii;
   end
end
    
end
