function [sentence] = whoGonnaWin(scores49, scoresCh)
    letter = char(39);
    score49 = scores49(1)+scores49(2);
    scoreCh = scoresCh(1)+scoresCh(2);
    if (score49==scoreCh)
        sentence = sprintf('It%ss a complete draw! Buckle in for an exciting second half!', letter);
    elseif (score49-scoreCh>10)
        sentence = sprintf('The 49ers have a lead of %d points! It looks like the Chiefs aren%st catching up!', score49-scoreCh, letter);
    elseif (scoreCh-score49>10)
        sentence = sprintf('The Chiefs have a lead of %d points! It looks like the 49ers aren%st catching up!', scoreCh-score49, letter);
    elseif (score49-scoreCh<10 & score49-scoreCh>0)
        sentence = sprintf('The 49ers have a lead of %d points! The Chiefs may still make a comeback though!', score49-scoreCh);
    else
        sentence = sprintf('The Chiefs have a lead of %d points! The 49ers may still make a comeback though!', scoreCh-score49);
    end

end
% first added first two quarters points for each team and then compared.