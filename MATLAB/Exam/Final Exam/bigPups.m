function bigPups(rows)

direc = dir();

files = {direc.name};

[files, ~] = sort(files);

pups = [];

for i = 1:length(files)

       if (strfind(lower(files{i} ), 'chungus'))

               [~, c, ~] = size(files{i});

               newimg = imresize(files{i}, [rows, c]);
               
               vec = 2:2:c;
               
               newimg(:, vec, :) = [];

               pups = [pups newimg];
       end
end

out = rgb2gray( pups );

out3d = cat(3, out, out, out);

imwrite('chunkyCanines.png', out3d);   

end