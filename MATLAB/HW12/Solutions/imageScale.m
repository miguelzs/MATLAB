function [height, width] = imageScale(microscope)

    img_in = imread(microscope, 'png');
    
    mask_black = img_in(:, :, 1) == 0 & img_in(:, :, 2) == 0 & img_in(:, :, 3) == 0;
    [rows, cols] = find(mask_black);
    height = max(rows) - min(rows) +1;
    width = max(cols) - min(cols) +1;
    
    mask_red = img_in(:, :, 1) == 255 & img_in(:, :, 2) == 0 & img_in(:, :, 3) == 0;
    [~, c] = find(mask_red);
    scale = max(c) - min(c) +1;
    
    height = round(height/ scale, 2);
    width = round(width/ scale, 2);
    close all;
end


%% IN/OUT
% in -> filename with picture of object in a certain scale.
%     scale is determined by a red line. x pixels = y micrometers
%     black border in white background
% out -> size of height
%        size of width
%% Steps
% 1) read the image
%   imread()   
% 2) find the black borders of the object
%   mask each level of RGB with 0
% 3) find the red line
%   mask 255, 0, 0
% 4) find size of height and width
%   min() max() of each
% 5) find scaling factor 
%   same process as blacks
% 6) ajust sizes to micrometers
%   img/ scale = real world