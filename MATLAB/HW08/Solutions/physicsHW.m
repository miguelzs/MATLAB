function [hwf] = physicsHW(hw)
    
    hwf = [];
    [row, col] = size(hw);
    for i = 1:row
        for j = 1:col
            if (ischar(hw{i, j}))
                hwf = [hwf hw(i, j)];
                switch j
                    case 1
                        hwf = [hwf {round((hw{i, 2}.*(hw{i, 3}^2)./2), 3)}];
                    case 2
                        hwf = [hwf {round((2*hw{i, 1}./(hw{i, 3}^2)), 3)}];
                    case 3
                        hwf = [hwf {round((sqrt(2*hw{i, 1}./hw{i, 2})), 3)}];
                end
                break;
            end
        end
    end
    hwf = reshape(hwf, [2, row])';
end
    
% first indentify which the char
%   scan each row looking for a char
    