function [str] = complicated(song, directions)

    map = [];
    song_id = fopen(song, 'r'); 
    directions_id = fopen(directions, 'r');
    
    song_line = fgetl(song_id); % loop to turn song file into cell array so that i can move around freely
    while ischar(song_line)     
        map = [map; {song_line}];
        song_line = fgetl(song_id);       
    end
% set up indexes for my current position
    i = 1; %represents the row in the cell array. starts at one
    j = 1; %index in the string inside the cell array. starts at one
    str = map{1}(1);
    
    dir_line = fgetl(directions_id);
    while ischar(dir_line) % go over directions_id
        [dir, steps] = strtok(dir_line);
        switch dir
            case 'up'
                first = i;
                i = i - (steps(2) - 48);
                last = i;
                for k = first-1:-1:last
                    str = [str map{k}(j)];
                end
            case 'down'
                first = i;
                i = i + (steps(2) - 48);   
                last = i;
                for k = first+1:last
                    str = [str map{k}(j)];
                end
            case 'left'
                first = j;
                j = j - (steps(2) - 48); 
                last = j;
                for k = first-1:-1:last
                    str = [str map{i}(k)];
                end
            case 'right'    
                first = j;
                j = j + (steps(2) - 48);
                last = j;
                for k = first+1:last
                    str = [str map{i}(k)];
                end
        end          
        dir_line = fgetl(directions_id);
    end
    
    fclose(song_id);
    fclose(directions_id);
end


% put song in a cell array

% the 1st strtok will define if we will move down line or down
%   or if we change the cell we're in or not. change in i
%   right and left change in j only
%   up or down change in i
% switch fo that

% '1' == 49
% steps - 48