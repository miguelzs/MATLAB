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