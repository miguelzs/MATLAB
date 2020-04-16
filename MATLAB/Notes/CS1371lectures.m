%% Lecture 1

%apparently you dont have to declare the variables
%
% function [c] = sum(a, b)
%     c = a + b;
% end

%% Lecture 2

% function [c, a] = circleMath(d)
   
%     First way
%     c = round(pi * d, 2);
%     a = round(pi * (d/2)^2, 2);%making operations having a "." before the 
%     operation symbol will the computer to make a scalar multiplication, instead it will do a matrix multiplication.
    
%     Second way
%     unroundedC = pi * d;
%     radius = d/2;
%     unroundedA = pi * radius^2;
%     
%     c = round(unroundedC, 2);
%     a = round(unroundedA, 2);
%     
%     Third way
%     c = pi * d;
    
    
% end

% round(Z, N); round a variable Z to N decimal cases;

%% Lecture 4

% EX1:

% %  command window
%  in1 = 6;
% in2 = 3;
% [out2 out1 out3] = mixup(in2, in1)
% A = out1;
% B = out2;
% C = out3;
% 
% function [out2 out3 out1] = mixup(in1, in2)
%     add_up = in1 + in2;
%     in2 = in1;
%     in1 = in2;
%     out1 = abs(in2 - in1);
%     out2 = in1 .* in2;
%     out3 = out2 ./ in1;
% end

% EX2:

% %  command window
%  score = 5;
% total = suGolf(10,score);

% function score = suGolf(strokes, par)
%     muli = floor(1.37) + 2;
%     rel = mod(strokes ./ par, par);
%     score = strokes - muli;
%     strokes = helper(score, muliO);
% end
% 
% function score = helper(rel, x)
%     x= x .* 2 +2;
%     score = mod(rel, x);
% end

% Data Types:
% double: double precision floating point
% uint8:
% single:

%  logical: true or false      obs : true + 1 = 2

% char: display character corresponding to Ascii
% % % vs double: siplay ASCII value of character
% % % char('d' + ('A' - 'a'))

% double('6') +5

% str2num () character to number of the ASCII table
% num2str () give a character that looks the same as the double 

%% Lecture 6

% Logical: 1=> true, 0=>0
% Logical Operators => AND (&), OR (|), NOT (~) 
%           Logical in, logical out
% Equality Operators => >, >=, <, <=, ==, ~=
%           Anything in, logical out 

% function [out] = isLower (ch)
% 
% out = (ch>=97) & (ch<=122);
% out = (ch>='a') & (ch<='z');
% 
% end

% function [out] = isLowOrDig (ch)
% 
%      out = ((ch>=97) & (ch<=122)) | ((ch>=48) & (ch<=57));

% out = isLower (ch) | isDig(ch);

% function [out] = is LO

%% Lecture 7, January 22nd: Vectors

% Index: matlab starts in 1. G = G(1), G(2), G(3)

%  How to create a vector? Three ways: 

% 1) Direct Operator:

% A = [2 5 7 1 3] or [2, 5, 7, 1, 3] // square brackets (doubles, logic);

% 2) Range Operator:

% B1 = 1:2:7 would be B1 = [1 3 5 7] // start position : steps for next postion : final position
% B2 = 1:10 // default step value=1;
% B3 = 20:-2:1 would be B3 = [20 ... ] // 

% 3) Linspace:

% C = linspace(1, 10, 2) would be C = [1 10] // linspace(start position,
% finish position, amount of values)

% 4) Other:

%     4.1) D = zeros(1, 5) would give [0 0 0 0 0]

%     4.2) E = ones(1, 5) would give [1 1 1 1 1]

%     4.3) F = rand() would give [0.2945974t52]

%     4.4) G = rand(1, 5) would give [0.4234, 0.42454, 0.5473, 0.56, 0.36]
%     // only 0-1 values.

% Representation

% [rows, cols] = size(A) // funstion to give the size of the vector;

% Operations with vectors

%   Vectors + or - Scalar
%       C = A + 7; // Element by element operation;

%   Vector + or - Vector of same length 
%       D = A - B; // Element by Element;

%   Vector + or - Vector of different length
%       ERROR: Matrix dimensions must agree;

%   Vectors * or / Scalar
%       C = A ./ 7 // MUST PUT THE DOT;

%   Vectors * or / Vector of same length 
%       D = C * A // 

%   Indexing
%       D = C(3)
%       
%       E1 = C([4 5 3])

%       T = C(5:-1:1)

%       K = C( length(C) :-1:1)

%       K2 = C(end:-1:1)

%       [a_sorted, a_order] = sort(A);
%       newB = B(a_order,:);
    
%% Lecture 8, January 24th: vectors (numbers)

% Concatenation: merge two vectors
%   H = [2 3 4 5];
%   K = [5 34 6 2];
%   S = [H K];
%   U = [H(2:2:end) S(1:3:end)];

% Vector Splicing
%   R = [3 4 5 6 3 6 7 8 8];
%   D(1:3:end) = R;

% Math stuff

%   S = sum(Q);
%   P = prod(Q);
%   M = mean(G);
%   [maxVal locVal] = max(Q);
%   [minVal locVal] = min(Q);

% Vector and Characters

%   uint8('a');
%   unit8('hello world'); // gives the ASCII table value of each character

%   first = 'Georgia';
%   space = char(32);
%   second = "Tech";
%   str = [first, space, second]

%       G(h) = upper (G(h));

% HW3

% sort();
% [a, b] = sort();


%% Lecture 9, masking indexing

% Masking: A WALL WITH HOLES (falses and trues) WHERE CERTAIN VALUES
% (cells) PASS AND OTHERS DON'T.
% 
% - Creating vector with find function

% C = [13 25 5 7 9]
% i1 = find (C>5);
% i1 = [1 2 4 5];

% Apply indecies to vector

%   D1 = C(i1);
%   D1 = [13 25 8 9]

% - Masking: Indexing a Vector with Logical Values
%   logical indexing 

%   m1 = [true true true true true];
%   m2 = [false false false false false]; 
%   m3 = [true false true false true];    // D1 = C(m3);
%   m4 = [true false true];    // 1x3 answer
%   m5 = [true true true true true false];   // would work! since its false
%   there is nothing to pass
%   m5 = [true true true true true true];    // would not work! matlab cant
%   pass something that it is not in the original vector.
% 
%   Masking Basics 
%       
%       Using Masks to 

%% Lecture 11

%   strcmp(): compare strings not necessaraly with same length; returns a
%   logical 0/1;
%   strcmpi(): same but not case sensitive
%   input(): //== printf+scanf
%   disp(): displays the vector/ matrix;
%   fprintf(): file print format, you can print this outcomes to any file
%   in your computer. if you do not give the file name, it prints in the
%   command window.
%   sprintf(): string print format, formats a string and outputs it to a
%   variable.
%       outStr = fprintf('the answer is %s', data1);
%           %s(strings) %d(intergers) %f(decimals) /n (new line) /t (tab) // all used in printing outcomes. %s, %d, %f
%           save a spot in the line fo ra given variable.
%       they both can take vectors of any sizes, you just have to put a series of s%, %f, %d. if smaller it wont print
%       anything in the end, if larger its gonna restart the outcomes. 
%           OBS: %f has the following format: % _ _ . _ f [leading zeros]
%           [how many space] . [digits past decimal] f
%                %f has a specific amount of spaces: 7, and the dot '.'
%                counts.

%  Conditionals
% - makes the code run out of order. used in all programing languages.
% true== path a, false== path b.
% - obs: iterations == returns code.
%  
%   1) if
%   2) if else
%   3) if else if
%   4) switch case


%% Lecture 13

% IF 

% if and else will never execute both in a same code. if (statement) is
% true, the code will skip the else() - end lines. if not true will skip it
% slines and execute else.
%   obs: difference between using and defining: if a variable is used (in
%   the right part of the statement) it has to be predefined; if it is
%   defined (in the left side of the statement) it doesnt have to be. 
% elseif: another condition before skipping to the general else. not
% necessarelly has a broad else afterwards.
% the broad else is the "default" of the conditional.

% logical relationships for conditions
% if () & ()
% if () | ()
% if any([00010]) // important for using already existant logical vectors
% if all([00100])

% note: when an if statement is being analysed, the computer only checks
% the next else lines if the statement above wasn't true, there is no need
% to keep checking it again at every new else. it works as if the domain of
% your variable decreases as it passes the ifs and elseifs statements.

% ex: if (g>90)
%           elseif (g<=90 & g>80)   // no need for saying g<=90 again)



% SWITCH

% switch <variable>

%   case <value of variable for case 1>

%       <commands>

%   case <value of variable for case 2>

%       <commands>

%   ...

%   otherwise

%       <commands>

% end

% obs: outStr = '<sentence to print>'; // does not use variables //
%       outStr = sprintf

%% Lecture 14: Iterations

% FOR
%      you can use a vector as the conditions for the loop to end. when all
%     the indexes have been applied the loop ends.
%      you can also define the for loop with a range
%      the vector that defines the loop can also be predefined in the
%     previous lines
%   IDEIA: with the for loop you dont have to care about making sure the
%   conditions for the loop to break happen. loop counter variable is
%   defined.
%    
% WHILE
%      loop counter variable is not defined. 
%      you have to make sure the conditions for loop to break will happen
%     eventually.
%      if the conditions to break are never met, the loop will go on for
%     ever.
%      
%% Lrcture 17: Arrays
% 
%   Arrays (rows, colums) 
%   ways to create arrays:
    %   A= [2 4 5  
%           3 4 5   
%           4 5 6];      
% or A [3 5 6; 26 5 6; 8 9 9];
%   obs: you have to remove entire rows or columns, cant remove a single digit 
% 
%       q = A([1 2], [1 2]);
%           q == [2 4 
%                 3 4];
%   obs: writing : defines as all. it can be used for defining the colums, rows                                             
%       functions: diag([1 4 56 7 8 8 8]) 
%                  magic(
% 
%% Lecture 18: Arrays
% 
%   [rows, columns] = size(a)
%   one can apply logical operators to a matrix and receive a logical arrat
% y in return  
%   when you remove a row/column the dimension of your array changes.
%   therefore, keep that in mind for tracing problems 
%   
%   Operations with Arrays
%       scalars or same size matrices
% 
%       if you apply a mask to an array matlab will create a vertical
%       vector with the remainders. the vector is structured based on its
%       columns, starting in (1,1) til (1,n)
%       
%       Function length() returns the largest size between either columns or rows

%       function min() max()

%       Function sum() gives the sum of the columns and return a vector
%       sum(sum()) gives the entire sum of the array
%       sum (A') gives the sum of the rows: "A'" gives the transposed
%       matrix
%        
%       Function reshape(matrix, rows, columns)
%       linearization: pattern of organization matlab follows which makes the 
%       sequence based in the columns. this implies you can use 
% 
%%  Lecture 19: HW examples

%   diagSum() - used iterations to add numbers where m==n, 
%   evenSteven() - mask to find evens, and then replace the corresponding
%   idexes.
%       pokestats requires that!
%   makeQuilt() - divide the quilt into blocks; define the blocks; define
%   the columns; define the rows.
%       pokePics has that!
%   lookAround() - 


%   question 5 : round(mean([]),2);

%% Lecture 20: HW examples

% Exam next wednesday
%   Conditionals and Iterations
%  
% Functions for today: 

% topChoice07  
%  receives: nxm array of candidate data
%            column to base selection
%  gives: name of winner
%  solution: 
%            
% strtok(colNames, 's'); // breaks with respect to the 's's.

% IoTie06 
%  receives: same array as hiLo05. receives a column to find the order and
%  sort taht way. 
%  gives: sorted array. with ties fixed according to ids sequence.
%  solution: using more than one sort. the first sort you do will retain
%            its sequence when you take the second sort.

% hiLo05  
%  receives: 7x9 array with columns representing a specific data and rows
%            giving a person
%  gives: ID of the highest and ID of the lowest
%  solution: using sort. sort gives you two outputs: [sorted vector,
%            indexes of sorted vector]. sort defaults to ascending to sort 
%            for decending order, add [x,r, 'decend'] to the sort function 
%            definition. sort the order, then, apply the sorted sequence.
%  obs: using max and min functions should work, however, you would need to 
%       do the process twice, once for max and another for min
% 
% rangeFinder09
% 
% tieBreaker08
%  receives: data set(array), vector with column and maximum value allowed
%            for that column.
%  gives: data set with the rows that dont fit the decription given by the
%         vector taken out.
%  solution: assign the empty vector for the required rows. do that 
% 

%% Lecture 21: Cell Arrays

% Cell arrays
% matlab likes homogenous collections
% dealing with heterogenous collections: using zip-lock bags!
% 
% A = [42 34 53 35 35 45]; thats a vector of doubles!
% a = A(1); you get 42 when you ask for an index, you get a double
% b = A(3); you get 53

% cA = [{456} {'amy'} {true} {[8 9 10]} {{'Hello'}}]; thats a vector of
% cells! the magic of zip lock bags
% cA = {456, 'amy', true, [8 9 10], {'Hello'}}   obs: cA(5) is a cell
% within a cell.
% g = cA(1); you get {456} when you ask for the index you get a cell!
% h = cA(3); you get {true} a cell!
% cA(2) = {'Help Please'}; the entire zip lock bag is changing, you dont
% open zip lock bags.
% cA(2) = 'Yep Yep'; NOT GONNA happen

% length(cA) gives you 5
% 
% to access the content of the cell: HOW TO OPEN THE ZIP-LOCK BAG
% content1 = cA{1}; gives you a double 456.
% 

% PARENTHESIS GIVES CELLS. BRACES GIVES CONTENT.

% THE RUBRIC'S CUBE PART
% cA(1) = {74597}; since you have a cell in the left, you need a cell in
% the right side.
% cA{4} = 789; you have the content in the left, the you need content in
% the right.

% you must be consistent with what you are replacing stuff by.
% 
% PLACING ADDITIONAL CELLS
% 
%% Lecture 22: Cell Arrays

% goDeep: you receive an array with cells and something thats not a cell in
% the end
%   function iscell : recognizes a cell and returns true
% 
% goDeepandFind stuff: return the content of each cell in another column
%   same as the kast one, but in the outcome you add another column and showcase the values of each zip-lock bag 

% goDeepFindStuffSort: 
%   

% makeTable: receive a series of inputs in vector forms with different
% types of data and creates a cell array with all the data types
%     remember to take the transpose of vector to plug them into the cell
%     array
%     FUNCTION num2cell(<variable>)
%     
% how to find a number in an array
% num2str(<number>) you get a bunch of doubles
% <'number'> == '6'
% any ([010])

% four question 
% tracing 
% short coding
% conditions, iterations, arrays. no cell arrays
% if to switch 
% if (x>0) & (x<20)
%     out = 'Bubbles';
% elseif x>20
%     out = 'Salad';
% else 
%     out = 'Eleven';
% end

% switch x
%   case {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
%   19}
%       out = 'Bubbles';
%   case 20
%       out = 'Eleven';
%   otherwise
%       out = 'Salad';
% end
% 

% sort an array with while
% for to while

%% Lecture 23: Structures!

% The end of the beginning
% Now, we're moving to get data from files
% 
% How to create a structure:
% 1) using dots
%       <variable>.<field name> = <value you want to put there>.
% 2) function struct()
%       <
% when you ask for the values in a  
% 
% % setfield: changes the value of a field. hasto be assigned to something
%   setfield (<structure>, <'field'>, <new value>)

%   getfield: just returns the value of a field
%   getfield(<st>, <'field'>)

%   rmfield: also needs to be assigned to something
%    if you assign [] to a field, it will become [], and will still exist.
%    with this function you can remove the entire field

% fieldnames: returns a cell array Nx1 with the fields of st.

%% Lecture 24: Kantwon Low-Level Files
% low level files
% once you read a line you cant go back, unless you use fclose(fh)
% fh = fopen(filename, permission)
%   permission is either 'w'(write) or 'r'(read)
% 
% \n plays an important role in reading files
% line = fgets(fileHandle); // s as in SAVES a new line
% line = fgetl(fileHandle); // Discarts the new line character

% finding specific lines in a file

%% Lecture 26: Quarantine class 2

% HW 1
% visdiff('<variable>.txt', '<variable2>.txt')
% the functions for file creation dont output a variable, just a file

%% Lecture 27: Quarantine class 3

% isequal(fileread('<filename>.txt'), fileread('<filename>.txt'));  

%% Lecture 28: Mid-Level Files
% 
% 24 hrs to do the exam
% 50 min
% submit the exam!
% 
% Mid-level files
% .csv
% data separated by delimeters
% numbers separated by something
% matlab guesses the delimeter, but you can also tell it

% readcell()
%   you give a file and matlab transfers it to a cell array respecting the
%   assumed delimeter

% writecell()
%   you give a file and cell array and matlab transfers the data to the
%   file

% cell2mat()
%   removes the cells and creates a single nxm array 
%% Note: How to print cell arrays

% newca = ca';
% fprintf(out_id, '%s %d\n', newca{:});

% the use of <cellarray>{:} tells matlab to go through every 1:end content.
% and arrays have a sequence that goes from column to column 1 to end. so
% you have to transpose the ca to have a pattern in data types.


%% Lecture 29: High-Level Files HW review

% important: function writecell !!
%     you should get data from a file, do calculations, put it all in a
%     cell array, and only when read print it to the output file.
% 1) cullConference
% function dir
%   file = dir;
%   file names in the directory given in a structure
% function contains
%     contains(<variable>, <'word'>, 'IgnoreCase', true) or false would
%     give case sensitive
% function startswith
% function replace (case sensitive)
% sort standard form is ascending and 'descend' does not work for cell
% arrays

% 2) HW 8, just get the function from there and modify the file stuff

% 3) 
%   manager wants to buy a car based on the first the player's first name
%   and first letter of the car

%% Lecture 33: Images HW

% Basics

% functions:

% figure; //creates the window youre gonna put the images

% img(<row>, <col>, <depth>); // put the coordinates for the pixel and give
%   the depth corresponding to RGB (red green blue from 0 to 255)
% the variable that os used for images is uint8() so whenever you created a
% matrix of doubles and want to turn it into an image you have to to
% uint8(<matrix>)

% imread(<filename>, <type>);

% imresize(<filename>, <[row, col]>);

% HW11
% use checkImage
% turn .png files only
% remove all imshow(), image()

% HW 1: to find mask2d of image. 
% mask2d = img_in(:, :, 1) == 0 & img_in(:, :, 2) == 0 & img(:, :, 3) == 0












