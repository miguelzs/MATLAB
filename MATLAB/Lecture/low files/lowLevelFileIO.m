%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                %
%       Low- Level File I/O!!!! (text files)     %
%                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% What is low level file i/o?
% low level is code where you have to do more work.
% this will make more sense when we do high-level file i/o.
% i/o stands for input/output.
% low level file i/o deals with .txt files


%% NEW FUNCTIONS ALERT

% fh = fopen(filename, permission)

% the output is a filehandle (double) that points to the location of the file
% in memory
% permission is either 'w' (write) or 'r' (read). (we dont use 'a' in this class)


% How do lines of a text file appear to show up on different lines?
% '\n'


%getting out lines

%fgets: SAVES the \n
line = fgets(fileHandle);
%fgetl: LOSES the \n
line = fgetl(fileHandle);





%Every time you call fgetl or fgets you get the next line
%When you reach the end of a file, you get back a -1 (class double)
fh = fopen('example2.txt');
line = fgetl(fh); %hi
line = fgetl(fh); %hi
line = fgetl(fh); %-1 class double
fclose(fh)





%What if I used fgets?
fh = fopen('example2.txt');
line = fgets(fh); %'hi\n' 
line2 = fgets(fh); %'hi'




%% looking at example1.txt what would A be at the end of this code
fh = fopen('example1.txt');
line1 = fgetl(fh); %'hi'
line2 = fgets(fh); %'hi\n'
A = line1 == line2; %ERROR DIMENSION MISMATCH




%% what about for example2?
fh = fopen('example2.txt');
line1 = fgets(fh); %'hi\n'
line2 = fgets(fh); %'hi'
line3 = fgets(fh); %-1
line4 = fgets(fh); %-1
A = line1 == line2; %ERROR


%% Writing to a file
%fprintf(fhw,string) or  fprintf(fh,formattedString,var,var,...)
%prints string to a file (indicated by fh) that was opened with fopen given write permission

%To write to a file, you have to first open it with write permissions

%Example:
%Create a 99 Bottles of <insert drink> on the wall file

fhw = fopen('milk.txt','w');
for x = 99:-1:1
    fprintf(fhw,'%d bottles of milk on the wall, %d bottles of milk, take one down pass it arround %d bottles of milk on the wall\n',x,x,x-1);
end









%% Common Blueprints when dealing with files


%% moving through every line in a file


%open file
fh = fopen(filename);

%read first line
line = fgetl(fh);

%As long as you're getting out text, keep reading
while ischar(line)
    
    %DO STUFF TO LINES IN MY FILE! YAY
   
    
    %get out next line
    line = fgetl(fh);
end
%close file
fclose(fh)




%% Capitalize every other line in a file
%The new file name should be the old file name with _upper appended to it
%ex: thing.txt --> thing_upper.txt
filename = 'samSong.txt';
newFilename = [filename(1:end-4) '_upper.txt'];
fhw = fopen(newFilename,'w');

%open file
fh = fopen(filename);

%read first line
line = fgets(fh);
count = 1;
%As long as you're getting out text, keep reading
while ischar(line)
    
    if mod(count,2) == 1
        line = upper(line);
    end
    fprintf(fhw,'%s',line);
    
    %get out next line
    line = fgets(fh);
    count = count + 1;
end
%close file
fclose(fh);
fclose(fhw);






%%Using fgetl
%open file
fh = fopen(filename);

%read first line
line = fgetl(fh);
count = 1;
%As long as you're getting out text, keep reading
while ischar(line)
    
    if mod(count,2) == 1
        line = upper(line);
    end
    fprintf(fhw,'%s\n',line);
    
    %get out next line
    line = fgetl(fh);
    count = count + 1;
end
%close file
fclose(fh);
fclose(fhw);


%% example: 
%Given a variable filename with the name of a file in the 
%format '<filename>.txt', reverse every line in the file
%that has an even number of characters and print it to 
%a new file called 'rev_<filename>.txt'. If it has an odd number
%of characters it should be printed to the file untouched.
%It is ok to have an extra empty line at the end.







%% moving through every word in a file

%open file
fh = fopen(filename);

%read first line
line = fgets(fh);

%As long as you're getting out text, keep reading
while ischar(line)
    
    %do stuff to lines
    
    %move through every word in the line
    [word,rest] = strtok(line);
    while ~isempty(word)
        %DO STUFF TO WORDS
        
        
        [word,rest] = strtok(rest);
    end
      
    
    %do stuff to lines
    
    line = fgets(fh);
end
%close file
fclose(fh);
fclose(fhw);


%% Count the number of times a certain word shows up in a file
filename = 'movie.txt';
%open file
fh = fopen(filename);

%read first line
line = fgetl(fh);

count = 0;

%As long as you're getting out text, keep reading
while ischar(line)
    
    %do stuff to lines
    
    %move through every word in the line
    [word,rest] = strtok(line);
    while ~isempty(word)
        %DO STUFF TO WORDS
        if strcmpi(word,'bee')
            count = count + 1;
        end
        
        [word,rest] = strtok(rest);
    end
      
    
    %do stuff to lines
    
    line = fgetl(fh);
end
%close file
fclose(fh);
fclose(fhw);








%% What if we want to look at every instance of the 
%% word that might be inside of other words








%%What if I had antoher file that contained a list of words that I
%%wanted to figure out how many times each of them show up in the file?
%%And then, what if I wanted to create a new file that is formatted like:
%% <word> - <count>

%look at wordCountList.m



















