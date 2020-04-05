function [foo] = dayfunction(day)
% Input: a number that represents a day of the week
% Output: weekend or weekday
    if (day==1)   %Sunday
        foo = 'the Weekend';
    elseif (day==7) %Saturday
        foo = 'the Weekend';
    else
        foo = 'a Weekday';    %Monday-Friday
    end
end
