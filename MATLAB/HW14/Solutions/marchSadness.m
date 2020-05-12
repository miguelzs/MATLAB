function marchSadness (file1, file2)

    %reading/ organizing data
    stats = readcell(file1);
    header = stats(1,:);
    data = (stats(2:end,1:end)); %doubles stats
    teams = data(:,1);
    
    games = readcell(file2);
    
    %finding index for stats
    winners = inf;
    while winners>1
        
        winners= [];
        counter = 1;
        [~, k] = size(games);
        for i = 1:length(games)
            if ~isempty(games{i, k})
                if mod(counter, 2) == 1
                    team1 = games{i, k};
                    counter = counter+1;
                else
                    team2 = games{i, k};
                    [winner, pos] = getWinner(team1, team2, teams, header, stats);
                    winners = [winners {winner} {pos}];
                end
            end
        end
        newcell = zeros(length(teams), 1);
        for j = 1:2:length(winners)
            newcell(winners{j+1}) = winners(j);
        end
        games = [games newcell];
        newcell = [];
    end
    
    outname = [winners '.xslx'];
    writecell(games, outname);
end


    function [winner, pos] = getWinner(team1, team2, teams, header, stats)
        
        ind_g = find(strcmp(header, 'G'));
        ind_w = find(strcmp(header, 'W'));
        ind_p = find(strcmp(header, 'P'));
        ind_op = find(strcmp(header, 'OP'));
        ind_ft = find(strcmp(header, 'FT'));
        ind_fta = find(strcmp(header, 'FTA'));
        ind_trb = find(strcmp(header, 'TRB'));

        ind1 = find(strcmp(team1, teams))+1;
        ind2 = find(strcmp(team2, teams))+1;
        
        pos = ceil(((ind2-ind1)/2)+ind1);
        
        calc1 = (1/8)*((stats{ind1,ind_p}/stats{ind1,ind_g})-(stats{ind2,ind_p}/stats{ind2,ind_g}));
        calc2 = -(1/10)*((stats{ind1,ind_op}./stats{ind1,ind_g})-(stats{ind2,ind_op}./stats{ind2,ind_g}));
        calc3 = (10)*((stats{ind1,ind_w}./stats{ind1,ind_g})-(stats{ind2,ind_w}./stats{ind2,ind_g}));
        calc4 = (8)*((stats{ind1,ind_ft}./stats{ind1,ind_fta})-(stats{ind2,ind_ft}./stats{ind2,ind_fta}));
        calc5 = (1/12)*((stats{ind1,ind_trb}./stats{ind1,ind_g})-(stats{ind2,ind_trb}./stats{ind2,ind_g}));
        calc = calc1+ calc2+ calc3+ calc4+ calc5;
        
        if calc>0
            winner = team1;
        else
            winner = team2;
        end
    end




% games played (G), games won (W), points (P), opponent points (OP), free
% throws (FT), free throw attempts (FTA), and total rebounds (TRB)

% 1(P1?P2)?1(OP1?OP2)+10(W1?W2)+8(FT1 ?FT2)+1(TRB1?TRB2)

% the amount of rounds is n+1, where n is 2^n = length(teams)
% create a while loop to go until there's one team left
%   compare the teams in a for loop  
%       the loop will through all cells and if it's not empty save it as
%       either team 1 or 2
%       define winner based on formula
%       save those in a vector
%   after getting the winners, go to a new for loop and distribute the
%       winners in the correct  next cell based on 
%           "When creating a new column of the output, always place the winning team at the row
%           index halfway in between itself and its opponent, rounding up when necessary. 
%           for example, in round 2 when Princeton (row 2) plays Michigan
%           State (row 4), the winner is placed in row 3."
%   concatenate the new round to games
%   return to the for loop







