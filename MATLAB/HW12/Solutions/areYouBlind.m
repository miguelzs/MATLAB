function areYouBlind(puppy, cmat)

    in_id = imread(puppy);
    outname = ['new_' puppy(1:end-4) '.png'];
    [row, col, dep] = size(in_id);
    
    out = zeros(row-2, col-2, dep);
    in_id = double(in_id);
    for depth = 1:3
        for c = 2:col-1
            for r = 2:row-1
                
                submat = in_id(r-1:r+1, c-1:c+1, depth);
                submat = submat.*cmat;
                out(r-1, c-1, depth) = sum(sum(submat));
            end
        end
    end
    out = uint8(out);
    imwrite(out, outname);
    close all;
end






% in gets filename of image
% out 'new_<original_filename>.png'

% for inside a for inside a for
% first depth then columns, finally rows
% start at 2 finish at end-1
% plug sums into 1 and end correctly