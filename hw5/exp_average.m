function [output] = exp_average(in1, in2)
   persistent b;
   persistent outn;
    
  if nargin == 1 
    if isempty(b)
        b = 0.1
        output = in1 
        outn = output
    else       
        output = b*in1 + (1-b)*outn
        outn = output
    end
  end
  
  if nargin == 2
      if ~isempty(b)
        b = in2;
        output = in1
        outn = output
      else
        output = in2*in1 + (1-in2)*outn;
        outn = output;
  end
end
    
    

