function basic_file (file_name)

    in_id = fopen(file_name, 'r'); 
    out_name = [file_name(1:end-4) '_solved.txt']; 
    out_id = fopen(out_name, 'w');
    
    line = fgetl(in_id);
    while ischar(line)
        
        while ~isempty(line)
            
            [word, line] = strtok(line);
            
        end
        
        line = fgetl(in_id);
    end
    
    fclose(in_id);
    fclose(out_id);
end