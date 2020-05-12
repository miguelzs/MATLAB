function yeOldChungi( rows )

direc = dir();

files = {direc.name};

[files, ~] = sort(files, 'ascend')

chung = [];

for i = 1:length(files)

       if (strfind(lower(files{i} ), 'chungus'))

               [~, c, ~] = size(files{i});

               newimg = imresize(files{i}, [rows, c]);

               chung = [chung newimg];
       end
end

out = rgb2gray( chung );

out3d = cat(3, out, out, out);

imwrite('gottem.png', out3d);   

end