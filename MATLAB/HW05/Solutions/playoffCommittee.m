function [playoffTeam] = playoffCommittee(team1, team2)
    teams = ['J' '4' 'P' 'F' 'G'];
    index1 = strfind(teams, team1(1));
    index2 = strfind(teams, team2(1));
    i1_i2 = index1-index2;
    if (index1==index2)
        playoffTeam = sprintf('Oh this isn''t a matchup, it''s practice!');
    elseif (i1_i2==1)||(i1_i2==-2)||(i1_i2==3)
        playoffTeam = sprintf('The %s make it into the playoffs over the %s!', team2, team1);
    elseif (i1_i2==-1)||(i1_i2==2)||(i1_i2==-3)
        playoffTeam = sprintf('The %s make it into the playoffs over the %s!', team1, team2);
    else 
        playoffTeam = sprintf('The Giants make it into the playoffs over the Jaguars!');
    end       
end

% i realized there was a pattern for the winning teams. if counted in
% clockwise direction, the following team would lose to the previous team, 
% the team two position after would win, the team three postions after 
% would lose, and the team four position after would win.
% with that i indexed the teams in a way that I could number them and make
% opperations to predict the result. 