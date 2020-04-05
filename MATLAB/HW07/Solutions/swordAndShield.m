function [pokemans] = swordAndShield(original, evColumn, threshold)

    [~, index] = sort(original(:, 1), 'descend');
    pokemans = original(index, :); 
    [~, ind] = sort(pokemans(:, evColumn), 'descend');
    pokemans = pokemans(ind, :);
    pokemans(pokemans(:, evColumn) < threshold, :) = [];

end
    