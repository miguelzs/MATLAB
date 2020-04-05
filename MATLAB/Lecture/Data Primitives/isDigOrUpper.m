function [out] = isDigOrUpper(ch)
    
    out = ((ch>=65) &(ch<=90)) | ((ch>=48) &(ch<=57));
   
    
    
    
    
    out = isUpper(ch) | isDig(ch);

    function [out] = isUpper(ch)
        out = (ch>=65) &(ch<=90);
    end

    function [out] = isDig(ch)
        out = (ch>=48) &(ch<=57);
    end

end

