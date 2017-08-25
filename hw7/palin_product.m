function [n] = palin_product(dig, lim)
% Generate an outter product matrix of size w and v
% where w is the max within the required digit and
% v is the min within the required digit.
w = str2double(repmat('9',1,dig)); 
v = str2double(['1',repmat('0',1,(dig-1))]);
mat=(v:w)'*(v:w);
m=mat(mat<lim);     % Fulfill the lim constraint
s=num2str(m);
o=s(:,end:-1:1);
c=[];
for i = 1:max(size(s))
   x=strip(s(i,:));
   y=strip(o(i,:)); 
   if strcmp(x,y)
       c = [c;(s(i,:))];
   end
end
if isempty(c)==0
    n=max(str2num(c)); %return a col vec
else
    n=0;
end
end

