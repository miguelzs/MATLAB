function [structData] = frankenCumber(cellData)

    field = [];
    value = [];
    for i = 1:length(cellData)
        field = [field {cellData{i}{1}}];
        value = [value {cellData{i}{2}}];
    end
    for i = 1:length(field)
        structData.(field{i}) = value{i};
    end
    
end

% save the first input of every cell into a field variable
% save the scnd input of every cell into a value variable
% create the struct based on those cell arrays