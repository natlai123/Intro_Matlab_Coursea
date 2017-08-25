function [dd] = day_diff(month1, day1, month2, day2)

% day_diff that takes four scalar positive integer inputs, month1, day1, 
% month2, day2. These represents the birthdays of two children who were born 
% in 2015. The function returns a positive integer scalar that is equal to 
% the difference between the ages of the two children in days. Make sure to
% check that the input values are of the correct types and they represent 
% valid dates. If they are erroneous, return -1.

q = zeros(13, 365);
q(2,1:31) = 1;
q(3,1:59) = 1;
q(4,1:90) = 1;
q(5,1:120) = 1;
q(6,1:151) = 1;
q(7,1:181) = 1;
q(8,1:212) = 1;
q(9,1:243) = 1;
q(10,1:273) = 1;
q(11,1:304) = 1;
q(12,1:334) = 1;
q(13,1:365) = 1;

if ~isscalar(month1) || month1 > 12 || month1 < 1 ||  month1 ~= fix(month1)
    dd = -1 ;
    return
end

if ~isscalar(month2) || month2 > 12 || month2 < 1 ||  month2 ~= fix(month2)
    dd = -1 ;
    return
end

if ~isscalar(day1) || day1 > 31 || day1 < 1 ||  day1 ~= fix(day1)
    dd = -1 ;
    return
end

if ~isscalar(day2) || day2 > 31 || day2 < 1 || day2 ~= fix(day2)
    dd = -1 ;
    return
end

if (month1 == 2) && (day1 > 28)
    dd = -1 ;
    return
end
    
if (month2 == 2) && (day2 > 28)
    dd = -1 ;
    return
end


if (month1 == 1 || month1 == 3 || month1 == 5 || month1 == 7 || month1 == 8 ...
        || month1 == 10 || month1 == 12) && (day1 > 31)
    dd = -1 ;
    return
end


if (month2 == 1 || month2 == 3 || month2 == 5 || month2 == 7 || month2 == 8 ...
        || month2 == 10 || month2 == 12) && (day2 > 31)
    dd = -1 ;
    return
end

if (month1 == 4 || month1 == 6 || month1 == 9 || month1 == 11) && (day1 > 30)
    dd = -1 ;
    return
end 

if (month2 == 4 || month2 == 6 || month2 == 9 || month2 == 11) && (day2 > 30)
    dd = -1 ;
    return
end 


child1 = sum(q((month1),1:end)) + day1;
child2 = sum(q((month2),1:end)) + day2;

if child1 > child2 
    dd = child1 - child2 

elseif child2 > child1
    dd = child2 - child1 
    
else
    dd = 0
end

%{
function diff = day_diff(m1,d1,m2,d2)
    days = [31 28 31 30 31 30 31 31 30 31 30 31];
    
    diff = -1;
    if     ~isscalar(m1) || m1 < 1 || m1 > 12       || m1 ~= floor(m1),  return;
    elseif ~isscalar(m2) || m2 < 1 || m2 > 12       || m2 ~= floor(m2),  return;
    elseif ~isscalar(d1) || d1 < 1 || d1 > days(m1) || d1 ~= floor(d1),  return;
    elseif ~isscalar(d2) || d2 < 1 || d2 > days(m2) || d2 ~= floor(d2),  return;
    end

    if m2 < m1 || (m1 == m2 && d2 < d1)      % make sure m1/d1 is the earlier date
        tmp = m1; m1 = m2; m2 = tmp;          
        tmp = d1; d1 = d2; d2 = tmp;
    end
    diff = sum(days(m1:m2-1)) + d2 - d1;
end
%}







