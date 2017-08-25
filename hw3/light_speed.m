function [min mile] = light_speed(disk)

%light_speed takes as input a row vector of distances in kilometers and 
%returns two row vectors of the same length. Each element of the first output 
%argument is the time in minutes that light would take to travel the distance 
%specified by the corresponding element of the input vector.

min = disk/(300000*60);
mile = disk/1.609;
end

%function [t m] = light_speed(km)
 %   t = km / 3e5 / 60;
  %  m = km / 1.609;
%end