%% Exam 3
% 
% st = struct('a', 1, 'b', 2, 'c', 3);
% ca = {{'a', 'house', 4}, 3, {{4}, 5, {{3}}}};

% 1)
% fhw, '%s: %d\n', word, num

% 2)
% line1 and line 2
% 'twoLines.txt'


outname = 'twoLines.txt';
out_id = fopen(outname, 'w');
fprintf(out_id, '%s\n', file2);
fprintf(out_id, '%s\n', file1);
fclose(out_id);

3)

while ~isempty(line)
            
    [word, line] = strtok(line);
    if strcmp(word, keyword)
    
        count = count + 1;
        
    end
            
end
       
4)

% horses is a structure
%   it has fields 'Name' and 'Age'
%   

mask = strcmp({horses.Name}, 'dwag');
horses(mask) = []

sort(ages, 'descend')

5)

[r, ~] = size(animals)
for i = 1:(r-1)
    
    animalStructure(i).Type = animals{i+1, 1};
    animalStructure(i).Quantity = animals{i+1, 2};
    animalStructure(i).Size = animals{i+1, 3};
    animalStructure(i).Food = animals{i+1, 4};
    
end
% 

6)

%weight matters

weights = {pigs.Weight};
[~, index] = sort(weights, 'ascend');
pigs = pigs(index);
weightedPigs = {pigs.Nickname};
% 
% 

8)


function springMenu = menuUpdated(menu, sorter)
    
    [indexseason, ~] = find('Season', menu);
    [indexprice, ~] = find('Price', menu);
    [indexsorter, ~] = find(sorter, menu);
    [indexcomplexity, ~] = find('Complexity', menu);
    mask = strcmpi('winter', menu(indexseason, :));
    menu(:, mask) = [];
    value = {'value'};
    [~, c] = size(menu);
    for i = 2:c
        
        val = round(((menu{indexprice, i} .* menu{indexcomplexity,i})./2), 1);
        value = [value {val}];
        
    end
    
    menu = [menu;value];
    
    [~, ind] = sort(menu(indexsorter, 2:c));
    springMenu = menu;
    menu = menu(:, 2:c);
    springMenu(:, 2:c) = menu(:, ind);
    disp(springMenu);
    
end


% delete collumns with strcmpi('winter',   )
% new row 'Value', ('Price' .* 'Complexity')./2
% 
% 
% 
% 
% 
% 
% 
