%% PRACTICE PROBLEMS
%% THESE ARE NOT TO BE TURNED IN.  THEY ARE ONLY TO HELP YOU PRACTICE YOUR
%% PROBLEM SOLVING AND CODING SKILS FOR VECTORS, CONDITIONALS AND
%% ITERATIONS


%% PROBLEM 1)
%% Write a script that starts like this...
clear
clc

classGrades = [90 45 67 89 72];

%% and looks at each grade in the vector classGrades and shows its letter grade
%% as indicated by...
%% A >= 90, B >=80, C >= 70, D >= 60, F < 60
%% Do this three times, 
%% Once using a for loop that indexes each element in the vector; 
% for i = 1:length(classGrades)
%     if classGrades(i) >= 90
%         grade = 'A'
%     elseif classGrades(i) >= 80
%         grade = 'B'
%     elseif classGrades(i) >= 70
%         grade = 'C'    
%     elseif classGrades(i) >= 60
%         grade = 'D'
%     else
%         grade = 'F'
%     end
% end  

%% Once using a for loop that sets the loop control variable equal to each element in the vector
% for numberGrade = classGrades
%     if numberGrade >= 90
%         grade = 'A'
%     elseif numberGrade >= 80
%         grade = 'B'
%     elseif numberGrade >= 70
%         grade = 'C'    
%     elseif numberGrade >= 60
%         grade = 'D'
%     else
%         grade = 'F'
%     end
% end 

%% Once using a while loop
% i = 1;
% while i <= length(classGrades)
%     if classGrades(i) >= 90
%         grade = 'A'
%     elseif classGrades(i) >= 80
%         grade = 'B'
%     elseif classGrades(i) >= 70
%         grade = 'C'    
%     elseif classGrades(i) >= 60
%         grade = 'D'
%     else
%         grade = 'F'
%     end    
%     i = i + 1;
% end


%% PROBLEM 2)
%% Write a script that starts like this ...
% clear
% clc

months = [1 2 3 4 5 6 7 8 9 10 11 12];

%% and looks at each month in the vector months and shows the number of days in
%% the month.
%% Do this three times, 
%% Once using a for loop that indexes each element in the vector; 
% for j = 1:length(months)
%     switch months(j)
%         case {9,4,6,11}
%             days = 30
%         case 2
%             days = 28 %Not considering leap year (but would be a good problem)
%         case {1,3,5,7,8,10,12}
%             days = 31
%         otherwise
%             error('Invalid input')
%     end
% end

%% Once using a for loop that sets the loop control variable equal to each element in the vector
% for month = months
%     switch month
%         case {9,4,6,11}
%             days = 30
%         case 2
%             days = 28 %Not considering leap year (but would be a good problem)
%         case {1,3,5,7,8,10,12}
%             days = 31
%         otherwise
%             error('Invalid input')
%     end
% end

%% Once using a while loop
% j = 1;
% while j <= length(months)
%     switch months(j)
%         case {9,4,6,11}
%             days = 30
%         case 2
%             days = 28 %Not considering leap year (but would be a good problem)
%         case {1,3,5,7,8,10,12}
%             days = 31
%         otherwise
%             error('Invalid input')
%     end  
%     j = j + 1;
% end


%% PROBLEM 3)
%% Write a script that starts like this...
% clear
% clc

modelYears = round(rand(1,5)*10) + 1998;
%modelYears = 1998:2008;
modelYears;

%% This is a randomly generated vector representing the automotive model
%% years of five cars.  The earliest model year is 1998.  The latest is
%% 2008. Your scrit should show the cost of each car's tag based on the
%% following table...

%% For 1998-1999 the tag cost is $10
%% For even year cars, the tag cost is $50
%% For odd year cars, the tag cost is $75
%% For leap year tags, the cost reduced by half
%% Do this three times, 
%% Once using a for loop that indexes each element in the vector; 
% for k = 1:length(modelYears)
%    if modelYears(k) <= 1999
%        cost = 10
%    elseif rem(modelYears(k),2)  == 0
%        cost = 50;
%        if rem(modelYears(k),4) == 0
%            cost = cost/2;
%        end
%        cost
%    else
%        cost = 75
%    end
% end          

%% Once using a for loop that sets the loop control variable equal to each element in the vector
% for year = modelYears
%    if year <= 1999
%        cost = 10
%    elseif rem(year,2)  == 0
%        cost = 50;
%        if rem(year,4) == 0
%            cost = cost/2;
%        end
%        cost
%    else
%        cost = 75
%    end
% end  

%% Once using a while loop
% k = 1;
% while k <= length(modelYears)
%    if modelYears(k) <= 1999
%        cost = 10
%    elseif rem(modelYears(k),2)  == 0
%        cost = 50;
%        if rem(modelYears(k),4) == 0
%            cost = cost/2;
%        end
%        cost
%    else
%        cost = 75
%    end
%    k= k + 1;
% end       
