function [out] = escapeTeamRocket(map, dir)

    [posr, posc] = find(map == 'o');
    done = false;
    map(posr, posc) = '#';
    while(~done)
        switch dir
            case {'l', '<'}
                posc = posc-1;
            case {'r', '>'}
                posc = posc+1;
            case {'u', '^'}
                posr = posr-1;
            case {'d', 'v'}
                posr = posr+1;
        end
        if (map(posr, posc) == 'X')
            done = true;
            break;
        elseif (map(posr, posc) ~= '.')
            dir = map(posr, posc);
        end
        map(posr, posc) = '#';
    end
    out = map;
end


% 'l' == decreases columns by 1
%   posc = posc-1;
% 'r' == increases columns by 1
% 'u' == decreases rows by 1
% 'd' == increases rows by 

% position = [m, n]
%   m will be defined by the intial positial at fist, and gradually change
%   depending on the directions.
%   [posr, posc] = find(map == 'o');
% direction will also initially be defined by l u r d  
% initial position will keep changing until we get to 'X'
%   use while with condition pos == 'X'
% replace old positions by '#'
%   add in the end of the loop pos = '#'
% next position is determined by the direction we have to follow
%   create a function for each character
%   switch case!!!
%   concatenate pos in the end
% 
% add a condition variable: done = false; while(~done); if map() == 'X'
% done = true end; 



