function [word] = scrabbleBoxes(b)
    
    word = [];
    add = [];
    for i = 1:length(b)
        add = b{i};
        while iscell(add)
            add = add{1};
        end
        word = [word add];
    end
end