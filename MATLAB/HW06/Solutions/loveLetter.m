function [decrypted] = loveLetter(encrypted, pairs)

    for i = 2:2:length(pairs)
        for j = 1:length(encrypted)
            if (pairs(i) == encrypted(j))
                encrypted(j) = pairs(i-1);
            end
        end
    end   
    decrypted = encrypted;
end