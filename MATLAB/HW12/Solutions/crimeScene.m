function crimeScene(photo)

    close all
    in_id = imread(photo);
    outname = [photo(1:end-4) '_edged.png'];
    
    mask_white = in_id(:,:,1) == 255;
    [row_white, col_white] = find(mask_white);
    mask3d = cat(3, mask_white, mask_white, mask_white);
    
    r = in_id(:, :, 1);
    g = in_id(:, :, 2);
    b = in_id(:, :, 3);
    for i = [-1 1]
        for j = 1:length(col_white)
            r(row_white(j)+i, col_white(j)) = uint8(255);
            g(row_white(j)+i, col_white(j)) = uint8(0);
            b(row_white(j)+i, col_white(j)) = uint8(0);
            r(row_white(j), col_white(j)+i) = uint8(255);
            g(row_white(j), col_white(j)+i) = uint8(0);
            b(row_white(j), col_white(j)+i) = uint8(0);
        end
    end
    out = cat(3, r, g, b);
    out(mask3d) = in_id(mask3d);
    imwrite(out, outname);
    close all;
end

%% In/Out
% in - filename
% out - file [filename(1:end-4) '_edged.png'] 

%% What to do
%  move the white frame in four directions and turn the pixel +1 in that
%  direction to red.

%% Steps
% 1)find the white frame

     
%     red_id = in_id;
%     red_id(mask_white, 1) = uint8(255);
%     red_id(mask_white, 2) = uint8(0);
%     red_id(mask_white, 3) = uint8(0);

% 2) loop the pixels on white to the 4 directions

% 3) paint them red

% 4) turn the original white spots to white again