function formatted = formatBookTitle(unformatted)
  
    spaces = strfind(unformatted, ' '); %create a vector with the cells in [unformatted] that have ' '.
    formatted = lower(unformatted); %lower all the function
    spacesnew = spaces + 1; %finding the next character after the space to upper it
    formatted(spacesnew) = upper(formatted(spacesnew)); %only the cells that are in the [spacesnew] positions will be uppered
    formatted = strrep(formatted, 'And', 'and'); %lowering required strings
    formatted = strrep(formatted, 'The', 'the');
    formatted = strrep(formatted, 'Of', 'of');
    formatted(1) = upper(unformatted(1)); %the first character must be upper anyways
    
end