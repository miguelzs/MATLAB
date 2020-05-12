function zoomVsBluejeans(zoom, calca_azul)
    
    zoom_ca = file2ca(zoom);
    c_azul_ca = file2ca(calca_azul);
    outname = [zoom(1:end-4) '_' calca_azul(1:end-4) '_comparison.txt'];
    out_id = fopen(outname, 'w');
    
    count1 = 0; %counter for lines passed without equal strings in file 1
    last2 = 0; %last saved line from file2
    out = [];
    scanned = 0;
    for i = 1:length(zoom_ca)
        for j = 1:length(c_azul_ca)
            
            if strcmp(zoom_ca{i}, c_azul_ca{j}) %if the lines are equal
                
                skip_break = false; %normally i want to skip break, i'll just continue scanning the second file if i have doubled lines
                dif = j-last2;
                if (dif > 1) %if the current line2 has more than one difference with the last saved line2, file2 has additional lines
                    
                    if dif == 2
                        out = [out; {sprintf('File 2 has 1 additional line.')}];
                    else
                        out = [out; {sprintf('File 2 has %d additional lines.', dif-1)}];
                    end
                end
                
                if count1~=0 %if in previous loops file1 didn't have equal line in file2, print that.
                    if count1 == 1
                        out = [out; {sprintf('File 1 has 1 additional line.')}];
                    else
                        out = [out; {sprintf('File 1 has %d additional lines.', count1)}];
                    end
                    count1 = 0;
                    
                end
                
                last2 = j; %saving the last line from file 2 i wrote, to know how many lines more file2 has 

                if isempty(find(j==scanned, 1))  %scans the saved lines so that in case there are repeated lines, I wouldn't save the same line twice
                        
                    out = [out; {sprintf('File 1 line %d matches File 2 line %d.', i, j)}]; %print files equal
                    
                else
                    skip_break = true; %doubled lines, skip break; i want to keep going
                end
                scanned = [scanned j]; %saves all the saved lines into a vector
                
                if ~skip_break %if i had a doubled line i dont want to end the second for when i find the matching lines, i wanna keep going.
                    break; %move to next line in file1 and restart lines in file 2
                end
            else %lines are not equal
                if j==length(c_azul_ca) %if im in the end of line2 with no equals, there's no line in file2 equal to file1. since if it was equal break would have finished the loop.
                    
                    count1 = count1 +1; %counter to file1
                end
            end
        end
        if i == length(zoom_ca) %special case, loop is not going back, so do what you would have done in the beginning of the next loop
            dif = length(c_azul_ca)-last2+1;
                if (dif > 1)

                    if dif == 2
                        out = [out; {sprintf('File 2 has 1 additional line.')}];
                    else
                        out = [out; {sprintf('File 2 has %d additional lines.', dif-1)}];
                    end
                end

                if count1~=0 
                    if count1 == 1
                        out = [out; {sprintf('File 1 has 1 additional line.')}];
                    else
                        out = [out; {sprintf('File 1 has %d additional lines.', count1)}];
                    end
                end
        end
    end

    

    for k = 1:length(out)
        
        if k == length(out)
            fprintf(out_id, '%s', out{k});
        else 
            fprintf(out_id, '%s\n', out{k});
        end
    end
    
    fclose(out_id);
end
    
function ca = file2ca (file_name) %function to put .txt files in cell arrays Nx1

    in_id = fopen(file_name, 'r');
    
    line = fgetl(in_id);
    ca = [];
    while ischar(line)

        ca = [ca; {line}];
        line = fgetl(in_id);
    end
    
    fclose(in_id);
end

% im going to create a for loop inside a for loop to compare both cell
% arrays
% if they're equal, print their indexes;
% if not i'll keep record of how many loops i go through with out finding
% the correct line and print that too