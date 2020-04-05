function [data] = dataMixer(vec1, vec2)

    [sortvec1, ind] = sort(vec1);
    sortvec2 = vec2(ind);
    data = zeros(1,(length(vec1)+length(vec2)));
    data(1:2:end) = sortvec1;
    data(2:2:end) = sortvec2;
    
%   vec1(sortvec1) (1:2:vec1(end)) (2:2:vec1(end)+1)
%   you have to sort vec1 and use the reordered sequence of vec1 cells to sort vec2 
end