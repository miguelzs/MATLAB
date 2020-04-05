function [heat_desc] = heatPlanner(numAthletes)

    div = [numAthletes:-1:1]; %vector with possible divisors of numAthletes
    Rem = rem(numAthletes, div); %vector with remainders of numAthletes./div
    mask = Rem==0; %mask only divisors of numAthletes
    Rem = div(mask); %excluded not possible div
    heat = max(Rem(2:end)); %highest div, except the numAthletes itself
    heat_desc = sprintf('There will be %d heat(s), each with %d athletes!', heat, numAthletes./heat);
    
% wanna have the maximum of heats that do not make 1 athlete per heat.
end