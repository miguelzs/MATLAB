[~, index]= sort(petInfo{2:end, 3})
updated = petInfo
updated(2:end, 1:end) = index

mask = find(strcmpi(petInfo{2:end, 2}))
updated = petInfo
updated(mask, 1:end) = [];

box = box1
freed = 0
while isstruct(box)
    
    if box.cat
        freed = freed+1
    end
    box = box.next
    
end

function wordComp(file_name, search1, search2)

    in_id = fopen(file_name, 'r'); 
    out_name = ['compare_' search1 '_' search2 '.txt']; 
    out_id = fopen(out_name, 'w')
    
    line = fgetl(in_id);
    while ischar(line)
        
        while ~isempty(line)
            
            [word, line] = strtok(line);
            
            if ~isempty(strfind(word, search1))
            
                word1 = word1 + 1
                
            elseif ~isempty(strfind(word, search2))
                
                word2 = word2 +1
                
            end
            if (word1>word2)
                fprintf(out_id, '%s\n', search1)
            elseif (word2>word1)
                fprintf(out_id, '%s\n', search2)
            else
                fprintf(out_id, 'equal\n')
            end
        end
        
        line = fgetl(in_id);
    end
    
    fclose(in_id);
    fclose(out_id);
end


end