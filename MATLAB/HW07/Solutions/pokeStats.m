function [stats] = pokeStats(missingStats, replacementStats)

    mask = missingStats == -1;
    missingStats(mask) = replacementStats(mask);
    stats = missingStats;

end