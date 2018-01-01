function out = day_counter(year)

% Create a vector which is effectively a lookup table of the number of days
% in each month. Then change the entry for February if the target year is a leap year.

% Note that a leap year occurs on any year evenly divisible by 4, but not 
% on a century unless it is divisible by 400. Taking that into account:

if ~isscalar(year) || year < 1776 || year > 2016 || year ~= floor(year)
    fprintf('Invalid input. Enter an integer between 1776 and 2016 inclusive')
    return
    end
 out = sum(weekday(datetime(year,1:12,1))==2)

end

%{
Initially, I was not aware of the weekday(), datetime() functions.
Thus, I came up with this very inefficient answer

 function out = day_counter(in)
if in >= 1776 && in <= 1800
    n_day_yr = (in - 1776)*365 + ceil((in-1776)/4);  
elseif in > 1800 && in <= 1900
    n_day_yr = (in - 1776)*365 + ceil((in-1776)/4) - 1;  
else
    n_day_yr = (in - 1776)*365 + ceil((in-1776)/4) - 2;
end
            
% See how many days passed between January 1 1776 and the given year,
% adjusted for 1800 and 1900

if mod(in,4) == 0  % if leap year
   i_mon = mod(n_day_yr,7) + 1;     % See what day January 1 was that input year  
   n_day_in = 1:366;
   n_week_in = ceil(length(n_day_in)/7);
   cal_mat = zeros(n_week_in*7,1);
   cal_mat(i_mon)=1;     % Jan
   cal_mat(i_mon+31)=1;
   cal_mat(i_mon+31+29)=1;   % Mar
   cal_mat(i_mon+31+29+31)=1;
   cal_mat(i_mon+31+29+31+30)=1;    % May
   cal_mat(i_mon+31+29+31+30+31)=1;
   cal_mat(i_mon+31+29+31+30+31+30)=1;   % July
   cal_mat(i_mon+31+29+31+30+31+30+31)=1; 
   cal_mat(i_mon+31+29+31+30+31+30+31+31)=1;  % Sem
   cal_mat(i_mon+31+29+31+30+31+30+31+31+30)=1; 
   cal_mat(i_mon+31+29+31+30+31+30+31+31+30+31)=1; % Nov
   cal_mat(i_mon+31+29+31+30+31+30+31+31+30+31+30)=1; 
   cal_mat = transpose(reshape(cal_mat,7,n_week_in));
   out=sum(cal_mat(:,1));
   if in == 2000
       return
   end
end

if mod(in,4) ~= 0 || in == 1800 || in == 1900   
   % if common year or Century year except 2000
   i_mon = mod(n_day_yr,7) + 1;
   n_day_in = 1:365;
   n_week_in = ceil(length(n_day_in)/7);
   cal_mat = zeros(n_week_in*7,1);
   cal_mat(i_mon)=1;     % Jan 
   cal_mat(i_mon+31)=1;
   cal_mat(i_mon+31+28)=1;  % Mar
   cal_mat(i_mon+31+28+31)=1;
   cal_mat(i_mon+31+28+31+30)=1;    % May
   cal_mat(i_mon+31+28+31+30+31)=1;
   cal_mat(i_mon+31+28+31+30+31+30)=1;  % July
   cal_mat(i_mon+31+28+31+30+31+30+31)=1;
   cal_mat(i_mon+31+28+31+30+31+30+31+31)=1;    % Sem
   cal_mat(i_mon+31+28+31+30+31+30+31+31+30)=1;
   cal_mat(i_mon+31+28+31+30+31+30+31+31+30+31)=1;  % Nov
   cal_mat(i_mon+31+28+31+30+31+30+31+31+30+31+30)=1;
   cal_mat = transpose(reshape(cal_mat,7,n_week_in));
   out=sum(cal_mat(:,1));
end
%}



