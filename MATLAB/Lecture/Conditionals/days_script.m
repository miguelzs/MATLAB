%% Assuming the days of the week correspond to numbers according to the
%% chart below:
%% Sunday - 1
%% Monday - 2
%% Tuesday - 3
%% Wednesday - 4
%% Thursday - 5
%% Friday - 6
%% Saturday - 7
%% Write a script that will determine if the day is a weekend or weekday

clear
clc

day = 10;

%% Solution 1 - if
% itIs = 'Weekday';
% if (day==1) | (day==7)   %Sunday or Saturday
%     itIs = 'Weekend';
% end
% itIs

%% Solution 2 - if-else
% if (day==1) | (day==7)   %Sunday or Saturday
%     itIs = 'Weekend'
% else
%     itIs = 'Weekday'    %Monday-Friday
% end

%% Solution 3 - if-elseif-else
% if (day == 1)   %Sunday
%     itIs = 'Weekend'
% elseif (day==7) %Saturday
%     itIs = 'Weekend'
% else
%     itIs = 'Weekday'    %Monday-Friday
% end

%% Solution 3b - if-elseif-else
% if (day == 1)   %Sunday
%     itIs = 'Weekend'
% elseif (day==7) %Saturday
%     itIs = 'Weekend'
% elseif (day>1) & (day<7)
%     itIs = 'Weekday'    %Monday-Friday
% else
%     error('You Suck Out Loud!!')   %itIs = 'Invalid number entry'      %error('Invalid number entry')
% end

%% Solution 4 - any()
% itIs = 'Weekday';
% if any( [day==1 day==7] )   %Sunday or Saturday
%     itIs = 'Weekend';
% end
% itIs

%% Solution 5 - switch-case
% switch day
%     case 1
%         itIs = 'Weekend'
%     case 2
%         itIs = 'Weeekday'    
%     case 3
%         itIs = 'Weeekday'       
%     case 4
%         itIs = 'Weeekday'       
%     case 5
%         itIs = 'Weeekday'        
%     case 6
%         itIs = 'Weeekday'
%     case 7
%         itIs = 'Weekend'
% end

%% Solution 5b - switch-case-otherwise
% switch day
%     case 1
%         itIs = 'Weekend'
%     case 2
%         itIs = 'Weeekday'    
%     case 3
%         itIs = 'Weeekday'       
%     case 4
%         itIs = 'Weeekday'       
%     case 5
%         itIs = 'Weeekday'        
%     case 6
%         itIs = 'Weeekday'
%     case 7
%         itIs = 'Weekend'
%     otherwise
%         error('Invalid number entry')
% end
%% Solution 6 - switch-case-otherwise (with multiples)
% switch day
%     case {1 7}
%         itIs = 'Weekend'
%     case {2 3 4 5 6}
%         itIs = 'Weekday'
%     otherwise
%         error('Invalid number entry')
% end
%% Convert number to a day of the week
% switch day
%     case 1
%         dayName = 'Sunday'
%     case 2
%         dayName = 'Monday'    
%     case 3
%         dayName = 'Tuesday'        
%     case 4
%         dayName = 'Wednesday'        
%     case 5
%         dayName = 'Thursday'        
%     case 6
%         dayName = 'Friday'
%     case 7
%         dayName = 'Saturday'
%     otherwise
%         error('You Suck!!')
% end