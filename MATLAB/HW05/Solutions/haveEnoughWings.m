function [statement] = haveEnoughWings(wings, people, wpp)

    if (wpp*people<wings)
        statement = sprintf('We have enough wings! In fact, we have %d left over!', -(wpp.*people)+wings);
    elseif (wpp*people==wings)
        statement =  sprintf('Wow! We have exactly enough wings for the party!');
    else 
        statement = sprintf('Call Wingzone immediately! We need %d more wings!', (wpp.*people)-wings);
    end

end
% used logicals to predict if the amount of wings was enough or not.