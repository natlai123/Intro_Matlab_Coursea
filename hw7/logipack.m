function [pack] = logipack(inmat)

[x,y] = size(inmat);
pack = cell(1,max(x,y));        % preallocation
    
for r = 1:max(x,y)              % mapping inmat's row to element of pack
  if any(inmat(r,:))>0          % check non-zero rows of inmat
    for ii=1:y                  % indexing 'true'
      if inmat(r,ii)            % check where the 'true' is
        pack{r}= [pack{r} ii];  % creating element of pack
      end
    end
  end
end

end