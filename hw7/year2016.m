function output = year2016(input)

% Input check
if isscalar(input) == 0
    output=[];
    return
end

% indexing
   month = char('January', 'February', 'March', 'April', 'May', 'June',...
        'July', 'August', 'September', 'October', 'November', 'December');
    % Can use datestr mmmm option instead
   days = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];

% For each month, code month, date, days,
% while varying the start and the end date of the month  
switch input 
    
  case {1,7}      
   start = 5;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i; 
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
   
  case 2 
   start = 1;
   x = 1;
    for i = 1:29
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
     
  case 3 
   start = 2;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
        
  case 4 
   start = 5;
   x = 1;
    for i = 1:30
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
    
 case 5
   start = 0;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
      
  case 6 
   start = 3;
   x = 1;
    for i = 1:30
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
  
 case 8 
   start = 1;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
     
 case 9 
   start = 4;
   x = 1;
    for i = 1:30
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end
    
 case 10 
   start = 6;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end  
    
 case 11
   start = 2;
   x = 1;
    for i = 1:30
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end     
 
 case 12
   start = 4;
   x = 1;
    for i = 1:31
        output(i).month=strtrim(month(input,:));
        output(i).date = i;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        output(i).day = days(x,:);
        start = start + 1;
    end     
  
    otherwise
       output=[];   
        
end
   
end