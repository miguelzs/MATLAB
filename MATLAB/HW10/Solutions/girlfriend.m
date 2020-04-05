function girlfriend(songLyrics)
    
    song = [];
%     creating name of out file
    songin_id = fopen(songLyrics, 'r'); 
    outname = [songLyrics(1:end-4) '_reordered.txt']; 
    out_id = fopen(outname, 'w');
    
%     creating the structure  
    line = fgetl(songin_id); %setting first line  
    while ischar(line)
        
        [tk, rest]  = strtok(line);  %taking out the first element, which is the number showcasing the position of the sentence
        rest(1) = [];
        i = str2double(tk);
        song(i).sentence = rest;
        line = fgetl(songin_id); %updating the line
        
    end
  
%     creating the file
    for j = 1:length(song) 
        
        fprintf(out_id, '%s\n', song(j).sentence);
        
    end    
    
    fclose(songin_id);
    fclose(out_id);
end

% file name mus the in the format '<filename>_reordered.txt'
% create a structure with two fields, position and sentence
% split all lines into those two fields
% sort the lines in terms of position in increasing order
% save .sentence into a file


%     while ~ischar(line)
%         
%         [tk, rest]  = strtok(line); %taking out the first element, which is the number showcasing the position of the sentence
%         line = fgetl(songin_id); %updating 
%         
%     end