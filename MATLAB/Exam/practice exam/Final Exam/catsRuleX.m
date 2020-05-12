function catsRuleX (file_name)

    in_id = fopen(file_name, 'r'); 
    
    line = fgetl(in_id);
    msg = [];
    counter = 0;
    while ischar(line)
        
        mask = line > 64 & line < 91;  
        counter = counter + length(line(mask));
        msg = [msg line(mask) ' '];
        line = fgetl(in_id);
    end
    msg(end) = '!';
    
    
    out_name = ['catsRuleX' num2str(counter) '.txt']; 
    out_id = fopen(out_name, 'w');
    fprintf(out_id, '%s\n', msg);
    
    
    fclose(in_id);
    fclose(out_id);
end