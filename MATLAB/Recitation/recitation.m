%creating a function:
%the name of the file is the name of the function

% function E = func (x, y) %function [d] : you need brackets to show how many outputs will be there
%                          %and you can put how many outputs you want just have to put the variables within the brackets
%                          %inputs are within parenthesis and separeted by commas
%                          %their sequence matters
%     Stress = F ./ A; % "=" assigned NOT Equallity
%     Strain 
%     
%     
%     
%     b = 7;
% end % write "fucntion" skips two lines and writes "end"
%    
% 



%functions learned in recitation 1
    % xpbombs : campo minado
    % why : funny not useful
    
    
% Recitation 2 January 15th: Functions!

%     function [output] = funcName (inputs)
%             Ex: function [out1 out2] = example(in1, in2)
%             
%     Data types: doubles / chars;
%           a = 7.5;
%             b = 7;
%             class(a) = 'double' 'char' 'logical'
%                                   char has specific numerical values
%                                   called ASCII values.
%  

% Recitation 3 January 22nd: Data Types

% 1) Logicals: var = false; var2 = true;
%   test1 = isequal(a,b);
%   test2 = isnumeric(type1);
%   test3 = islogical(var3);
%   test4 = a>50&a<100;
%   any() // replaces 'or' - '|'
%   all() // replaces 'and' - '&'

% 2) Data structures
%   a) Homogenous: you can save only inputs of a same data type in those.
%       eg. vectors
%   b) Heterogenous: you can save inputs of different data types.

% 3) Vectors
%   a = [1, 2, 3, 4, 5] or [1 2 3 4 5]
%   greeting = ['h' 'e' 'l' 'l' 'o'] or ['hello'] // strings are vectors of
%   chars. however in matlab the class of strings is given by
%   "<name_of_string>" but we wont use in this class.
%   
%   Indexing vector data

%       Ex1: vec = [8, 7, 2, 9, 3]
%            num = vec(2); // num == 7;
%            vec2 = vec([5, 3, 1, 2, 4] // vec = [3, 2, 8, 7, 9]
%            vec([6,7]) = [8,6] // subtituting several indexis at once
%   [min, ind] = Min(vec) // 
%   [max, ind] = Max(vec) 
%   summ = sum (vec);
%   prodd = prod(vec);
%   avg = mean (vec);
%   differ = diff(vec); // [(i+1)-i, (i+2)-(i+1)...(i+n)-(i+n-1)]
  

%   strcmp (str1, str2) // isequal for string
%   strcmpi (str1, str2) // strcmp not case sensitive
%   strrep ()
%   strfind ()
%   strtok ()
%   sort ()


