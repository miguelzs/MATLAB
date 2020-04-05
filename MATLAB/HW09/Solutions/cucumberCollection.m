function [selected] = cucumberCollection(collection)

    [~, c] = size(collection);
    for i = c:-1:1
        collection(i).XP = 10*collection(i).HP + 5*(collection(i).Intelligence + collection(i).Regeneration) + collection(i).Stealth;
        if (collection(i).XP<=1000 && collection(i).Stealth<=70)
            collection(i) = [];
        end
    end
    collection = rmfield(collection, 'Mobility');
    [~, index] = sort([collection.XP], 'descend');
    selected = collection(index);
end

% XP = 10*HP + 5*(Intelligence + Regeneration) + Stealth
% create a new field for each cucumber with the corresponding value of XP
% remove the species that dont fit the requirements
% rmfield mobility
% sort descend
