function [searched] = lostAtSeaCucumber(seaCucumberCrowd, searchingFor)
    
    i = 1;
    searched = [];
    searchedindex = [];
    done = true;
    while done
        count = 0;
        searched = [searched seaCucumberCrowd(i).Name ' '];
        searchedindex = [searchedindex i];
        if (strcmp(seaCucumberCrowd(i).Name, searchingFor) == 1)
            break;
        end
        for j = searchedindex
            if isequal(i, j)
               count = count + 1;
               if count == 2 
                   break;
               end
            end
        end
        i = seaCucumberCrowd(i).Next;   
    end
end

% first ill set the first name to be 1
% second ill change the name according to next
% third ill check if i reached the searchingfor
% forth ill check i already passed by that place
%     how? 
% if (strcmp(seaCucumberCrowd(i).Name, searchingFor) == 1)
%             break;
%         elseif (strfind(seaCucumberCrowd(i).Name,searched)) == seaCucumberCrowd(count).next )
%         end
% 