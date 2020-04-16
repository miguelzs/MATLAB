function slapMyBread(file_in)

    hw = readcell(file_in);
    outname = [file_in(1:end-5) '_solved.xlsx'];
    hwf = physicsHW(hw);
    writecell(hwf, outname);
    
end

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

%% input file .xlsx
%% output a file with solved equations. two columns: 1st variable solved for. 2nd value found
%% first
%   turn input to cell array so that calculations can be made readcell(inputfile) 
%   set outfile name
%% second
%   call function done in hw8
%% third
%   output turning cell array into .xlsx file writecell()


