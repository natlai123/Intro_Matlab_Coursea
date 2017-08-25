function [fared] = fare(miles, age)

% fare that computes the bus fare one must pay in a given city based on the 
% distance travelled. Here is how the fare is calculated: the first mile is 
% $2. Each additional mile up to a total trip distance of 10 miles is 25 cents.
% Each additional mile over 10 miles is 10 cents. Miles are rounded to the 
% nearest integer other than the first mile which must be paid in full once 
% a journey begins. Children 18 or younger and seniors 60 or older get a 20% 
% discount. The inputs to the function are the distance of the journey and 
% the age of the passenger in this order. Return the fare in dollars, e.g.,
% 2.75 would be the result returned for a 4-mile trip with no discount.

if miles < 1 
   dist = ceil(miles)
else 
   dist = round(miles)
end

if dist == 1
    far = 2 
end

if dist <= 10 & dist > 1 
    far = (dist-1)*0.25 + 2 
end

if dist > 10
    far = 2 + 9*0.25 + (dist-10)*0.1 
end

if age >= 60 | age <= 18
    fared = far*0.8
else 
    fared = far
end
     