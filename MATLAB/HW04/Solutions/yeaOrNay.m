function [selected] = yeaOrNay(answers, ids, needed)

%     1) receives answers with 'yea ' or 'nay ' 
%     2) selects the ids of the 'yea's 
%           2.1) 
%     3) selects the first #needed out of the #'yea's

    yandn = answers(1:4:end);
    yandn = strrep(yandn, 'Y', '1');
    yandn = strrep(yandn, 'N', '0');
    mask = yandn == '1';
    selected = ids(mask);
    selected(needed+1:end) = [];

end