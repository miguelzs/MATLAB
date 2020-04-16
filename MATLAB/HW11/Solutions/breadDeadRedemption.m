function out_cell = breadDeadRedemption(word_in)

    file = dir;
    docs = {file.name};
    mask = startsWith({file.name}, word_in, 'IgnoreCase', false);
    if any(mask)
        out_cell = docs(mask)';
    else
        out_cell = {'No Files Found'};
    end
end

%% Data in: string with word to look for
%% Data out: cell array with the names of the files in the current folder (HW11) with word_in
%% First
%   use dir to get what is in the directory 
%   make file.name a cell array
%% Second
%   use startsWith to mask the files
%% Third 
%   analyse if file is empty
