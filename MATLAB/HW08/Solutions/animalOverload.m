function [player] = animalOverload(animalArr)

    [row, ~] = size(animalArr);
    add = [];
    for i = row:-1:1
        if (animalArr{i, 3} == false)
            animalArr(i, :) = [];
        elseif (any(num2str(animalArr{i, 4}) == '6'))
            animalArr(i, :) = [];
        elseif (animalArr{i, 5} < 6.2 || animalArr{i, 5} > 9.7)
            animalArr(i, :) = [];
        end
    end
    col = [animalArr{:, 2}];
    [~, sorted] = sort(col, 'descend');
    player = animalArr(sorted, :);
    [row, ~] = size(player);
    if (mod(length(sorted), 2) == 0)
        player(row, :) = [];
        row = row -1;
    end
    for i=1:((row+1)/2)-1
        add = [add {'My Team!'}];
    end
    for i=((row+1)/2):row
        add = [add {'Loser'}];
    end
    player = [player add'];
end

% first i eliminate the animals that dont meet the requirements. 
% second i sort the remaining animals in descend order
% third i make the amount of animals odd
% fourth i create a vector of cells with myteam or loser
% fifth i concatenate this vector to player