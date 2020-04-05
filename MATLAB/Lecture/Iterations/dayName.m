function dayName = dayName(day)
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

