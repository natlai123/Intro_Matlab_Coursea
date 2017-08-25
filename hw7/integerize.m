function out = integerize(A)
  out = 'NONE';
  a = max(A(:));
  b = min(A(:));
  
   if abs(a) < abs(b)
    if b >= -(2^7) && b < 0
        out = 'int8';
    end    
    if b < -(2^7) && b >= -(2^15)
        out = 'int16';
    end    
    if b < -(2^15) && b >= -(2^31)
        out = 'int32';
    end  
    if b < -(2^31) && b >= -(2^63)
        out = 'int64';
    end
   end
 
  if abs(a) >= abs(b)
    if (a <= (2^7 - 1) && a >= 0) || (b >= -(2^7) && b < 0)
        out = 'int8';
    end
    if (a > (2^7 - 1) && a <= (2^15-1)) || (b < -(2^7) && b >= -(2^15))
        out = 'int16';
    end   
    if a > (2^15-1) && a <= (2^31-1) || (b < -(2^15) && b >= -(2^31))
        out = 'int32';
    end    
    if a > (2^31-1) && a <= (2^63-1) || (b < -(2^31) && b >= -(2^63))
        out = 'int64';
    end
  
  end

    