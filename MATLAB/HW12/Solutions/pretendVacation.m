function pretendVacation(you, bkgd)

%   reading files
    close all
    you_id = imread(you, 'png');
    bkgd_id = imread(bkgd, 'png');
    outname = [bkgd(1:end-4) '_vacay.png'];
    
%   masking into the RGB 3d array  
    mask_green = (bkgd_id(:, :, 1) == 0) & (bkgd_id(:, :, 2) == 255) & (bkgd_id(:, :, 3) == 0);
    mask3d = cat(3, mask_green, mask_green, mask_green);
    
%   fiding the size of the green space  
    [rows, cols] = find(mask_green);
    height = max(rows)-min(rows)+1;
    width = max(cols)-min(cols)+1;
    
%   pluging my pic in it
    bkgd_id(mask3d) = imresize(you_id, [height, width]);
    out = rgb2gray(bkgd_id);
    out = cat(3, out, out, out);
    imwrite(out, outname);
    
    close all;
end

%% In/Out
% in - two pictures, one of a background with a rectangular green corner.
%   one of a picture of you with doubled columns and rows.
% out - picture with you in the background replacing the green space
%% Steps
% 1) read files
% 2) find the green corner
%   find(mask) 
%   height/width min/max
% 3) replace green with the picture
%   imresize()