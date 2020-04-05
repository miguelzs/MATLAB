%% Assuming the days of the week corespond numbers according to the
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

% done = false;
counter = 1;
while counter <=4
    day = input('Please Enter A Day Number: ');
    
%     if (day == 0)               %Check to see if user wants to quit
%         done = true;
%     else
        %Check for weekend
        if (day==1)   %Sunday
            itIs = 'Weekend';
        elseif (day==7) %Saturday
            itIs = 'Weekend';
        else
            itIs = 'Weekday' ;   %Monday-Friday
        end

        switch day
            case 1
                dayName = 'Sunday';
            case 2
                dayName = 'Monday' ;   
            case 3
                dayName = 'Tuesday' ;       
            case 4
                dayName = 'Wednesday';        
            case 5
                dayName = 'Thursday'  ;      
            case 6
                dayName = 'Friday';
            case 7
                dayName = 'Saturday';
            otherwise
                error('Invalid day number');
        end
    
        fprintf('Today is %s and it is %s.\n', dayName, itIs)
%     end
    
    counter = counter + 1;
end    