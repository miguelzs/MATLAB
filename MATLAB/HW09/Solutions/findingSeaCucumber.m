function [dist, depth] = findingSeaCucumber(sea)
    [~, c] = size(sea);
    for i = 1:c
        depth = 1;
        dist = i;
        content = sea(i).nextFathom;
        while isstruct(content)
            depth = depth + 1;
            content = content.nextFathom;             
        end 
        if strcmp(content,'SeaCucumber')
            break;
        end  
    end
end

% dist is gonna be the index of the structure im in 
% depth is gonna be how many nested sts i have to go through before finding
% the miserable cucumber.
% first create a ~for~ loop going through the sea(i).nextFanthom i until  N  
% second ~if~ the content of the field is another struct, open it and analyze
% again with a ~while~
% third save the current i into dist 
% forth add a counter for the times you go down structs
% isstruct(sea(i).nextFanthom)