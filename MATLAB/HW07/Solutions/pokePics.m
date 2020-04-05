function [pic] = pokePics(encoded, dimension)
    [rows, columns] = size(encoded);
    length = rows*columns;
    encoded = reshape(encoded - length, dimension);
    for i = 1:length
        if (encoded(i) >= 65 && encoded(i) <= 90)
            encoded(i) = 42;
        elseif (encoded(i) >= 97 && encoded(i) <= 122)
            encoded(i) = 35;
        end
    end
    pic = char(encoded);
end