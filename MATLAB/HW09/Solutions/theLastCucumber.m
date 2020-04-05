function [out] = theLastCucumber(me, opp, moves)
    out = [];
    for i = 1:2:length(moves)        
        roundme = moves{i};
        opp.health = opp.health - me.(roundme);
        out = [out {sprintf('You deal %d damage to the opponent using the move %s!', me.(roundme), roundme)}];
        if (opp.health <= 0)
            out = [out {'The opponent suddenly faints, too exhausted to continue the battle!'}];
            out = [out {sprintf('You reign victorious with %d health remaining! All beings over the sea fear your might!', me.health)}];
            break;
        end
        if i~=length(moves)
            roundopp = moves{i+1};
            me.health = me.health - opp.(roundopp);
            out = [out {sprintf('The opponent deals %d damage to you using the move %s!', opp.(roundopp), roundopp)}];
        end
        if (me.health <=0)
            out = [out {'You suddenly faint, too exhausted to continue the battle!'}];
            out = [out {sprintf('The opponent takes over your turf with %d health remaining.', opp.health)}];
            break;
        end         
    end
    out = out';
end
% create a for loop going step 2 until the end of moves
% remove the content from the cell to define the field
% subtract the damage done by each fighter
% concatenate the outputs to out
% analyze if someone is dead
% transpose out to be a tall array;