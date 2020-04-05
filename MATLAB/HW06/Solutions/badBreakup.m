% function [val] = badBreakup(list)
%     val = [];
%     higher = [];
%     remain = list;
%     while ~isempty(remain)       
%         [object, remain] = strtok(remain, 's');
%         [value, remain] = strtok(remain, 's');
%         if (length(value)>length(higher))
%             val = object;
%             higher = value;
%         elseif (length(value)==length(higher))
%             if (value > higher)
%                 val = object;
%                 higher = value;
%             end
%         end
%     end
% end

function [mostval] = badBreakup(list)
    
    commas = strfind(list, ',');
    values = [];
    mostval = [];
    highest = double([]);
    for i = 1:length(commas)
        values = double(list(commas(i)+1)):1:double(list(commas(i+1)-1));
        values = double(values);
        if (length(values)>length(highest))
            highest = values;
            mostval = list(commas(i-1)+1):list(commas(i)-1);
        elseif (length(values)==length(highest))
            if (values > highest)
                highest = values;
                mostval = list(commas(i-1)+1):list(commas(i)-1);
            end
        end
    end
end


% list(1:2:end) separates by commas gives the objects
% list(2:2:end) gives the prices.
% find the index of the commas: strfind
% change values for double: double(comma(n-1)+1:comma(n)-1
% compare values: for 
