
practice



% a.
% 
% [r, c, ~] = size( imgBuzz );
% 
% imgNYresized = imresize(imgNY, [r, c]);
% 
% b.
% 
% mask_green = imgBuzz(:, :, 1) == 0 & imgBuzz(:, :, 2) == 255 & imgBuzz(:, :, 3) == 0 ;
% 
% mask3d = cat(3, mask_green, mask_green, mask_green);
% 
% imgBuzzNY = imgNYresized;
% 
% imgBuzzNY(mask3d) = imgBuzz(mask3d);
% 
% c.
% 
% imgOut = imrotate(imgBuzzNY, 30);