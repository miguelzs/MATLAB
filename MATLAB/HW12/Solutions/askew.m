function [deg, minHeight] = askew(filename)

    in_id = imread(filename);
    minHeight = length(in_id);
    for i= 1:179
        rotated = imrotate(in_id, i);
        mask_red = rotated(:, :, 1) == 255 & rotated(:, :, 2) == 0 & rotated(:, :, 3) == 0;
        [r, ~] = find(mask_red);
        distance = max(r)-min(r) +1;
        if distance<minHeight
            deg = i;
            minHeight = distance;
        end    
    end
    close all;
end
%% IN/OUT
% in - filename of image
% out - 1) #degrees rotated. 2) 
%% Steps
% use a for i= 1:179 to scan all possible rotations
% do a break if you find the right one
%  how to define the right one?
% the one in which the distance between the max(r),min(c) and min(r),
% max(c) is equal the mininum
% mask the rotated image for red
% imrotate i the matrix
% analyse if the height increase or decrease 
% save values if decreased



