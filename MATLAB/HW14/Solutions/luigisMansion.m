function path = luigisMansion(maze)
    
    done = false;
    nopath = [];
    while ~done %only leave this when found exit
        row = 1;
        col = 1;
        done2 = false;
        path = [];
        dirforb = [];
        
        while ~done2 %leave this at every dead end or exit

            [dir, room] = updateRoom(row, col, maze);
            doors = [];
            
            for i = 1:4 
                safe = checkNoPath(row, col, dir{i}, nopath);
                if (strcmp(room.(dir{i}), 'exit'))
                    done = true;
                    done2 = true;
                    path = [path dir{i}];
                    return;
                    
                elseif ~strcmp(dirforb, dir{i}) & strcmp(room.(dir{i}), 'door') & safe
                    doors = [doors dir(i)];
                end
            end
            
            if (row==1 && col==1) %if its the first room you can have one door
                var = 2;
            else      
                var = length(doors);
            end
            
            switch var
                
                case 0 %having one door means dead end
                    
                    nopath = [nopath [{lastrow}, {lastcol}, dirlast]];
                    done2 = true;

                case {1, 2, 3} %more than one door means you have to check which is the right one
                    lastrow = row
                    lastcol = col
                    [dirlast, dirforb, newrow, newcol] = direction(row, col, doors{1}); %now to confirm if it is a good door or not, I get in there
                    path = [path doors{1} ' ']; %put it in the path
                    row = newrow;
                    col = newcol;
%                          
            end 
        end
    end
end

function [dir, room] = updateRoom(row, col, maze) %gives new values for room and dir

    
    room = maze(row,col);
    dir = [{'up'} {'down'} {'left'} {'right'}];
    
end
function [dirlast, dirforb, newrow, newcol] = direction(row, col, pos)

    if strcmp(pos, 'up')
        newrow = row-1;
        newcol = col;
        dirforb = 'down';
    elseif strcmp(pos, 'down')
        newrow = row+1;
        newcol = col;
        dirforb = 'up';
    elseif strcmp(pos, 'left')
        newrow = row;
        newcol = col-1;
        dirforb = 'right';
    elseif strcmp(pos, 'right')
        newrow = row;
        newcol = col+1;
        dirforb = 'left';
    end
    dirlast = pos;
end
function safe = checkNoPath(row, col, pos, nopath)
    for j = 1:3:length(nopath)
        if (row==nopath{j} && col==nopath{j+1} && strcmp(pos, nopath{j+2}))
            safe = false;
            return;
        else 
            safe = true;
        end
    end
    if isempty(nopath)
       safe = true;
    end
end 
 
%% Notes
% move around the array 
% dont come back to the place you've been before
%   if you reach a point where you only have walls and where you've been
%   before restart and take another path
% create a 'safe path' vs a 'possible path', the door im sure i have to got
%   through i put in the safe path, so that if i get lost, i would come back
%   to the last safe spot i know.
%       the safe path would be confirmed if the room had only two doors- the one 
%           the you came from and the one you had to go to. 
%           if it had three doors or more it's tricky. 

% first issue
%  read the possible doors in the room
%  room = maze(x,y)
%     u = room.up
%     d = room.down
%     l = room.left
%     r = room.right

% second issue
%   check how many rooms we have
% 
% third issue
%   check which rooms are 'nopath'
%   for that i have to go through all the previous nopath and see if it is
%   there or not.

%% tries



%                     h=0;
%                     while h <= length(doors) || done3%check every door if i know it's a dead end or leads to one
%                         pos = doors{h};
%                         safe = checkNoPath(row, col, pos, nopath);
%                         
%                        if safe %if it is not a confirmad fake door should be true



%                             [newdir, ~] = updateRoom(newrow, newcol, maze); %new room im in





%                         done3 = false
%                         else
%                             nopath = [nopath [{row}, {col}, doors(1)]];
%                             done2 = true;
%                             for k = 1:4 %to verify the room, I have to check its directions
%                                 
%                                 newpos = newdir{k}; %gives the direction
%                                 newsafe = checkNoPath(newrow, newcol, newpos, nopath); %says if this direction is safe or not
%               
%                                 if newsafe
%                                     row = newrow;
%                                     col = newcol;
%                                 else   
%                                     for i = 1:4 
% 
%                                         nopath = [nopath [{row}, {col}, dir(i)]];
%                                         
%                                     end
%                                 end
%                             end
%                         end
                        
%                         h = h+1;
