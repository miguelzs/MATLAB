function [collated] = deckCollation(attackType, strength, critical)

    collated = [];
    for i = 1:length(strength)    
        collated = [collated {[attackType(i) {strength(i)} {critical(i)}]}];      
    end

end