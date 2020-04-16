img = imread(filename);

lefthalf = img(:, 1:end/2, :);

img(:, (end/2) + 1, :) = lefthalf;

[r, c, d] = size(img);

img_res = imresize(img, [r/2, c]);

img_final = imrotate(img_res, -90);

imwrite([filename(1:end-4) '_grande.png'], img_final);