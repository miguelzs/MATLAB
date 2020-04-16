function sortMyPokedex(filename)

ca = readcell(filename)

ind_level = find(strcmp(ca(1, :), 'Level')); 

ind_attack = find(strcmp(ca(1, :), 'Attack'));

[~, sort_ind] = sort(ca(2:end, ind_attack), 'ascend');

sorted = ca;

subca = ca(2:end, :);

sorted(2:end, :) = subca(sort_ind, :);

[r, c] = size(sorted);

sorted(1, c+1) = {'Team?'};

for i = 2: r

      if( sorted{i, ind_level} > 15)

            sorted{i, c+1} = 'Yes';

      else

            sorted{i, c+1} = 'No';

      end

end

writecell( sorted, [filename(1:end-5) '_solved.xlsx']);

end