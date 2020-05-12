function [num_bac] = bacteriaCulture (file, r, g, b)

    close all
    img = imread(file);
    mask_bac = img(:, :, 1) == r & img(:, :, 2) == g & img(:, :, 3) == b;
    
    [r, c] = size(mask_bac);
    dim = 0;
    highest_dim = 0;
    for i = 1:r
        for j = 1:c
            if mask_bac(i, j)
                dim = dim +1;
            else
                dim = 0;
            end
            if dim > highest_dim
                highest_dim = dim;
            end
        end
    end
    
    pix_tot = length(find(mask_bac));
    num_bac = ceil(pix_tot./(pi*(highest_dim./2)^2));
    
end