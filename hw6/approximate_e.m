function [x, y] = approximate_e(delta)
k=0;
E=0;

while delta < abs(exp(1)- E)
E = E + (prod(1:k))^(-1)
k = k + 1  
end
x = E
y = k-1 
%fprintf('The approximate value of e is %f \n', x);
%fprintf('The number k is %f \n', y);
end

%{
function [a,k] = approximate_e (delta)
    e = exp(1);                      % reference value for e
    f = 1;                           % first factorial term  
    a = 1;                           % first series term
    k = 0;                           % term subscript
    while abs(a-e)>delta
        k = k+1;    
        f = f*k;
        a = a+1/f;
    end
end
%}