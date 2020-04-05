function  day_script_helper_functions()

    counter = 1;
    while counter == 1

        day = input('Please enter a day:');

        %Check for weekend
        itIs = myDayfunction(day);

        %Convert day number to day name
        dayname = myDayName(day);


        fprintf('Today is %s and it is %s.\n', dayname, itIs);

        %Increment counter so that it gets closer to the while loop's
        %terminating condition
        counter = counter + 1;

    end
    
    %% ==========================================HELPER FUNCTIONS
    function dayName = myDayName(day)
    %Convert day number to day name
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
                error('Invalid day number')
        end
    end

    function [foo] = myDayfunction(day)
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

end