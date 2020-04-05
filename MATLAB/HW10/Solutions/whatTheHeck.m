function whatTheHeck (file_name)

    ca = [];
    in_id = fopen(file_name, 'r');
    out_name = [file_name(1:end-4) '_counts.txt'];
    out_id = fopen(out_name, 'w');
    
    line = fgetl(in_id);
    while ischar(line)      
        mask = (line>=65&line<=90)|(line>=97&line<=122)|(line==32);
        line = line (mask);    
        while ~isempty(line)   
            
            [word, line] = strtok(line);
            [indexr, ~] = find(strcmpi({word}, ca));
            if isempty(indexr)               
                ca = [ca; {lower(word)} {1}];            
            else                
                ca{indexr, 2} = ca{indexr, 2} + 1;     
            end                
        end
        line = fgetl(in_id);
    end
    D = ca';
    fprintf(out_id, '%s %d\n', D{:});
    
    fclose(in_id);
    fclose(out_id);
end

% output should have the name: <filename>_counts.txt
% count how many times every word appears in the 
% 
% cell array or structure? 
%  cell array should be printed directly to the file in the format i want
%  so thats why ill use it at first.
% 
%  the cell array would have the following format at every loop ca = [ca; {word}
%  {' '} {counter}]

% first remove non-characters from the line
% second go through every word in the line
% second.1
%   go through every word in ca{:,1} 
%       use a for i= 1:
%   if the word already exists in ca{i}
