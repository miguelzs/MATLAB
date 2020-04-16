function sliceAndDice(key)

    table = [];
    struct = dir;
    files = {struct.name};
    file_name = files{contains(files, key)};
    out_name = [file_name(1:end-4) '.xlsx'];
    file_id = fopen(file_name, 'r');
    
    line = fgetl(file_id);
    while ischar(line)
        
        table_row = [];
        del = line(length(line));     
        while ~isempty(line)        
            
            [word, line] = strtok(line, del);
            table_row = [table_row {word}];
            
        end
        table = [table; table_row];
        line = fgetl(file_id);
        
    end
    writecell(table, out_name);
    fclose(file_id);
    
end

%% in/out
% input: string with a part of the file name
% output: 

%% steps
% first: find the file name
%   look inside the directory with dir
%   use contains() to get the correct file
% second: use low file to go through every line and strtok with the
%   different delimeters
%   fopen -> fgetl -> while loop -> strtok -> repeat
% third: go through every word saving the token in a cell array
% forth: after finishing a line, save the created cell array row into the
%   big cell array
% fifth: create a .xlsx file.