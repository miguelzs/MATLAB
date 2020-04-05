%apparently you dont have to declare the variables
%
function [c] = Sum(a, b)
    c = a + b;
end

%Lecture 2

function [c, a] = circleMath(d)
   
%     First way
    c = round(pi * d, 2);
    a = round(pi * (d/2)^2, 2);
    
%     Second way
%     unroundedC = pi * d;
%     radius = d/2;
%     unroundedA = pi * radius^2;
%     
%     c = round(unroundedC, 2);
%     a = round(unroundedA, 2);
%     
%     Third way
    c = pi * d;
    
    
end