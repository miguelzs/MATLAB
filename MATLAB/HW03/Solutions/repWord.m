function [modified] = repWord(original, wordFind, wordReplace)
 
    wordSize = size(wordFind); %save the size of wordFind
    wordOld = strfind(original, wordFind);  %find the index of the first character of 'wordFind'
    first = original(1:1:wordOld-1); %cutting the 1st half
    third = original(wordOld+wordSize(2):1:end); %wordOld +  worldSize give the next character of the sentence. cutting the 2nd half
    modified = [first wordReplace third]; % concatenate
% find the required word, and substitute by the replacement. 
end