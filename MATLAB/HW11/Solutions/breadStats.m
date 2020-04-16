function breadStats (stats, onsale)

    out_name = [stats(1:end-5) '_calculated.xlsx'];
    in_stats = readcell(stats);
    [~, ind] = sort(in_stats(1, :));
    sort_stats = in_stats(:, ind);
    
    mask = [true; contains(sort_stats(2:end, 1), onsale)];
    rm_stats = sort_stats(mask, :);
    
    cal = [rm_stats{2:end, 3}]'.*4 + [rm_stats{2:end, 4}]'.*9 + [rm_stats{2:end, 5}]'.*4;
    tot_point = (10 - floor(cal./50)) + (10 - floor([rm_stats{2:end, 2}]'./2));

    newcal = {'Calories'};
    newtot = {'Total_Points'};
    for i = 1:length(cal)
        newcal = [newcal; {cal(i)}];
        newtot = [newtot; {tot_point(i)}];
    end   
    tot_stats = [rm_stats newcal newtot];
    
    [~, i] = sort(tot_stats(1, :));
    names_sort_stats = tot_stats(:, i);
    [~, j] = sort([names_sort_stats{2:end, 7}]);
    points_sort_stats = [names_sort_stats(1,:); names_sort_stats(j+1, :)];
    
    out_file = [points_sort_stats(1, :); points_sort_stats(end-2:end, :)];
    writecell(out_file, out_name);

end
%% in/out
%   in: 1st name of .xlsx file. 2nd cell array with breads on sale
%   out: <filename>_calculated.xlsx with fixed stats

%% notes
% cheapest and lowest calories bread better
% my headers: '?Bread'?, '?Carbs'?, ?'?Proteins'?, ?'?Fats'?, ?and ?'?Bread_Price'
%   random order!

% 1. delete breads not on sale
% 2. create new column 'Calories'. calculating cal:
%    a. Carbs  4 cal/g
%    b. Proteins  4 cal/g
%    c. Fats  9 cal/g
% 3. rank breads: new column 'Total_Points'. higher better, cal and price, max 10
%    a. Price: <points> = 10 - floor(<price>./2)
%    b. Cal: <points> = 10 - floor(<cal>./50)
% 4. sort breads 'ascend' based on 'Total_Points'
% 5. sort table with headers in alphabetical order
% 6. output only the three bottom breads

%% steps
% first: organize the initial files
%   turn in_file to a cell array
%   sort it in a known manner
%   bread - breadprice - carbs - fats - proteins
% second: delete ~contains(c, onsale)
% third: calculate price and cal
%   vector operations
% forth: sort and sort cell array
% fifth: 





