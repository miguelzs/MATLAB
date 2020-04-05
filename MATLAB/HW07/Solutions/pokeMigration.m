function [updatedMap] = pokeMigration(oldMap)

    mean = [];
    sum = 0;
    [rmap, cmap] = size(oldMap);
    for i = 1:rmap
        for j = 1:cmap
            if (i~=1 && i~=rmap && j~=1 && j~=cmap)
                for k = 0:2 
                    for h = 0:2
                        sum = oldMap((i-1+k), (j-1+h)) + sum;
                    end
                end
                mean = [mean sum./9];
                sum = 0;
            end
        end
    end
    updatedMap = reshape(mean, rmap-2, cmap-2);
    updatedMap = round(updatedMap',2);
end

% find the indexes in the middle
%   find the amount of rows, and columns
%       length(row)==4
%       length(columns) == 4
%       row cant be equal to either one nor 4.
%       same for columns.
%       i ~= length(row) && i~=1
%       j ~= length(column) && j~=1
% sum the near indexes 
%   rows and columns plus one
%   for inside a for
%       first i reach row i, and add up the columns j, j+1, j+2
%       then ill go to row i+1, and i+2;
%       
% mean of those sums
%     create a vector of those means
% create the new matrix
%     reshape the vector into a matrix
% 