function helloKitty(file, ca)
    
    counter = 0;
    in_id = fopen(file, 'r');
    outname = [file(1:end-4) '_fixed.txt'];
    out_id = fopen(outname, 'w');
    
    line = fgetl(in_id);
    while ischar(line)
        
        newline = [];
        while ~isempty(line)
            [tk, line] = strtok(line);
            if strcmp(tk, 'BEEP')
                counter = counter+1;
                tk = ca{counter};
            end
            newline = [newline tk ' '];
        end
        newline(length(newline)) = [];
        fprintf(out_id, '%s\n', newline);
        line = fgetl(in_id);
    end
    
    fclose(in_id);
    fclose(out_id);
end

% first idea: DIDNT WORK
% i need to find where in the sentences is there a 'BEEP' and in those
% positions replace with the given words in the cell array.
% in order to do that i will split every sentence in two:  whats before
% beep and whats after beep so that i can concatenate with the required
% word.
% '<filename>.txt' input
% '<filename>_fixed.txt' output

%  first ill create a while loop to go through the file per line.
%  second.1 ill strfind() the index of 'BEEP' within the file
%  second.2 create a for = index so that it will go over every index with a
%   beep 
%  second.3 add a counter for the times i loop this for.
%  third ill split the sentence in line(1:index-1) and line(index+4:end)
%  forth ill concatenate [first ca{counter} second]
%  fifth fprintf inside the loop
%  update fgetl

% it didnt work because having more than one beep in the sentence messed
% the loop

% second idea: WORKED
% first go over every word in the line with strtok and while
% second if word = 'BEEP' change it to the adequate word
% third add a counter to determine ca{i}
% forth save every word to a string again and add a space
% fifth out of the loop remove the last space in the vector and add it to
%  the file
% sixth repeat until there are no more lines.
