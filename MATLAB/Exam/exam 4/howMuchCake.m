function out = howMuchCake( in )
img = imread(in);
mask = img(:, :, 1) == 0 & img(:, :, 2) == 255 & img(:, :, 1) == 0;
[r, c] = find(mask);height = max(r) - min(r) +1;width = max(c) - min(c) +1;
areacake = height * width;
[rtot, ctot, ~] = size(img);
areaimg = rtot*ctot;
out = sprintf('The cake is %d x %d and takes up %d%% of the table!', height, width, round((areacake/areaimg)*100));
end