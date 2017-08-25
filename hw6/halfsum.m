function [e] = halfsum(A)
[x y] = size(A)

if x == y 
    for n = 1:x
        for nn = 1:x-n
    A(n,1:nn) = 0 
        end 
    end
   [e] = sum (A(:))
end

if x ~= y
    nn =0
     for n = x-1:-1:1
        for nn = nn+1
   A(n, 1:nn) = 0 
        end 
    end
   [e] = sum (A(:))
end

end
        
      
        
