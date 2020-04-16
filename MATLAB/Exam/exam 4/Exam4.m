 function exam(r)
 r = 'exam4.xlsx'
 rawca = readcell(r);
 ca = cell2mat(rawca(2:end, 2:end));
 summed = sum(ca');
 [~, ind] = max(summed);
 winner = rawca{ind+1, 1};
 winner
 end
 
%  'friends.xlsx'