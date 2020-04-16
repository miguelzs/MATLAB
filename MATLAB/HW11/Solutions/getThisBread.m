function out = getThisBread(shop_list_in, inv_table_in)

    prices = 0;
    shop_list = readcell(shop_list_in);
    market_table = readcell(inv_table_in);
    for i = 1:length(shop_list)
        index = find(contains(market_table(:,2), shop_list(i,1), 'IgnoreCase', true));
        prices = prices + (market_table{index,3}.*shop_list{i,2});
    end
    out = sprintf('My total will be $%.2f.', prices);

end




%% in/out
% input: 
% 1st '<filename>.txt' with shopping list. 
%   file format:
%       '<item>,<number of items>'
% 2nd '<filename>.xlsx with grocery inventory
% output: 'My total will be $<total>.' type char

%% steps
% 1st: read both files
% 2nd: 



