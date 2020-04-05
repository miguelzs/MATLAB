function vec = wordLen(sentence)

    spaces = strfind(sentence, ' '); %vector with cells of spaces to know where to split the words
    first = sentence(1:1:spaces(1)-1); %vector with the first part, -1 to remove the ' '
    second = sentence(spaces(1)+1:1:spaces(2)-1); %vector with the second part, +1 and -1 to remove the ' 's
    third = sentence(spaces(2)+1:1:end); %vector with the first part, +1 a to remove the ' '
    vec = [size(first, 2) size(second, 2) size(third, 2)];
%     divide the sentence in three (three words) and take their sizes.
end