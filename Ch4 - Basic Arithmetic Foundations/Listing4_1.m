% positive numbers should be entered by the user
x = input('Enter number X = ');
y = input('Enter number Y = ');

% validation of X number
if isempty(x)
    error 'Number X -> You need to enter a value. Non-empty values are not allowed';
else
    x = abs(x);
end

% validation of Y number
if isempty(y)
    error 'Number Y -> You need to enter a value. Non-empty values are not allowed';
else
    y = abs(y);
end

% computing the remainder
remainder = x - y*floor(x/y); 

% we will perform untill
while remainder ~= 0
    x = y;
    y = remainder;
    remainder = x - y*floor(x/y);
end 

% show the result
GreatCommonDivisor = y