function puzzled(filename, pos)

    img_id = imread(filename, 'png');
    outname = [filename(1:end-4) '_solved.png'];
    [~, c, ~] = size(img_id);
    pics = c/length(pos);
    ca = [];
    for i = 1:pics:c
        
        ca = [ca {img_id(:, i:i+pics-1, :)}];
        
    end
     ordered_ca = [];
     for j = 1:length(pos)
        
        ordered_ca = [ordered_ca ca{pos(j)}];
        
    end
    imwrite(ordered_ca, outname);

end


%% in/out
% output a .png with ordered smaller pics
% input picture number of correct positions

%% Steps
% get the size of pos
% for loop to divide each picture into smaller
%   put them all in a cell array