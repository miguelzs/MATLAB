function [fixedText] = corruptedMessage(corr, ref)
    
   % masklog = (corr == '?'); %masklog == vector of logicals, 1 has '?'
    maskcells = strfind(corr, '?'); %maskcells == vector of cells with '?'
    fixedText = corr;
    fixedText(maskcells) = ref(maskcells);
    
end