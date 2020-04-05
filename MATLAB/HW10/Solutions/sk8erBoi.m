function sk8erBoi(love, rej)

    a = fopen(love, 'r'); %opening the input files with condition read only
    b = fopen(rej, 'r');
    outname = [love(1:end-4) '&' rej(1:end-4) '.txt']; %creating the name for output. removing the .txt from the input names
    out = fopen(outname, 'w'); %creating the output file with write condition
    
    linea = fgetl(a); 
    lineb = fgetl(b);    
    while ischar(lineb) %when lineb becomes -1, while will end
        
        fprintf(out, '%s\n%s\n', linea, lineb);
        linea = fgetl(a);
        lineb = fgetl(b);
        
    end
      
    fclose(a);
    fclose(b);
    fclose(out);

end

% all set