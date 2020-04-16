function [out] = isLowOrDig(ch)

%     out = ( (ch>=97) & (ch<=122) ) | ( (ch>=48) & (ch<=57) );
    
    
    out = isLower(ch) | isDig(ch);
    
    function [owt] = isLower(charrr)
        owt = (charrr>=97) & (charrr<=122);
    end

    function [out] = isDig(ch)
        out = (ch>=48) & (ch<=57);
    end

end