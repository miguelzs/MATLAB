function [sent] = myOtRules(team1, team2)

    team1 = [team1 ','];
    team2 = [team2 ','];
    spaces1 = find(team1 == 32);
    spaces2 = find(team2 == 32);
    team1 = strrep(team1, 'Touchdown,', 'T');
    team1 = strrep(team1, 'Nothing,', 'N');
    team2 = strrep(team2, 'Touchdown,', 'T');   
    team2 = strrep(team2, 'Nothing,', 'N');
    mask = team1(spaces1:end)+team2(spaces2:end)==162;
    wins = find(mask==1);
    if (mask==[0,0,0,0,0,0])
        sent = sprintf('I guess the NFL was right all along...');
    elseif (strcmp(team1(spaces1(1)+wins(1)-1),'T')==1)
        sent = sprintf('%s Won!!!', team1(1:spaces1(1)-2));
    else
        sent = sprintf('%s Won!!!', team2(1:spaces2(1)-2));
    end
    
end

% inputs will be vectors with <name of the team> 3x <Touchdown/ Nothing>.
% there are four posibilities a team score and the other doesn't for each
% quarter or its a draw. Touchdown = 955  Nothing = 727.