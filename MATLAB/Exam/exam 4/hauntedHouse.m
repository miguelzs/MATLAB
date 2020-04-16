function hauntedHouse(filename)

ca = readcell (filename);

outname = [filename(1:end-5) '_friend.xlsx'];

ind_names= find(strcmp(ca(1, :), 'Names')); 

ind_zombies= find(strcmp(ca(1, :), 'Zombies')); 

[~, sort_ind] = sort(ca(2:end, ind_names));

sorted = ca;

subca = ca(2:end, :);

sorted(2:end, :) = subca(sort_ind, :);

[r, c] = size(sorted);

zombies = [ca{2:end,ind_zombies}];

col_zombies = [{'Crazy Scary'}];

for  i = 1:c-1

      col_zombies = [col_zombies; {zombies(i) + 3}];

end

sorted(:, ind_zombies) = [];

final = [sorted col_zombies];

writecell(final, outname);