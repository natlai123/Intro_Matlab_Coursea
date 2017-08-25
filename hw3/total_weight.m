function [tw tv] = total_weight(vol, wd);
%tw = sum(vol.*wd);
%tw = [(vol(1,1)*wd(1,1))+(vol(1,2))*(wd(1,2))];
tw = vol*wd';
tv = sum(vol);
%tv = [vol(1,1) + vol(1,2)];
end

