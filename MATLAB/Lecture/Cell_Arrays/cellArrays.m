%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                %
%       Cell Arrays!!!! (Kantwon's fave!)        %
%                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% What is a cell array
% a "heterogenous" data structure that allows you to contain values of
% different types in one entity.


%% Where have we seen cell arrays before?
% switch statements!

var = 'hi';
switch var
    case {1,'a',true} % <-- OMG A CELL ARRAY
        out = 1;
    case {'hey','hi',false} % <-- OMG ANOTHER CELL ARRAY
        out = 2;
    otherwise
        out = 3;
end



%% What do we like cell arrays?
%1) can have multiple data types in one entity
%2) containing strings in vectors is usually not what you want to do (hard
%to know when one starts and ends


%% Creating cell arrays
% A CELL ARRAY IS JUST AN ARRAY (or vector) OF CELLS

%Using just curly brackets
ca = {1,'a',false}

%concatenating together cells
ca = [{1} {'a'} {false}]

%nested cell arrays
ca = {1,{'a'},false}
ca = [{1} {{'a'}} {false}]

%Multi-length nested cells
ca = {1, {'a','hello',[1 2 34]}, false}

%vertical and mxn cell arrays
ca2 = {1;'a';false}
ca3 = {1 'a';false {'howdy',[1 23]}}



%% building a cell array in a loop
%take a vector "vec" and change it to a cell array using a loop
%ex: vec = [3,6,2,1] -> new = {3,6,2,1}
% vec = [3,6,2,1];

%Why not just put brackets around
vec = [3,6,2,1]
ca = {vec} %this is wrong because you just put the entire vector in one cell

%indirect access
vec = [3,6,2,1]
new = [] %could also be initialized as an empty cell {}
for x = 1:length(vec)
    new = [new {vec(x)}]
end


           
%direct access
vec = [3,6,2,1]
new = [] 
for x = vec
    new = [new {x}]
end




   

%%another way but doesn't get the Kantwon stamp of approval

vec = [3,6,2,1]
new = {} 
for x = vec
    new = [new x]
end




%% absolutely very very bad and wrong and should never be done
%This just ends up nesting a whole bunch of things, which is probably not
%what you wanted to do :(
vec = [3,6,2,1]
new = [] 
for x = vec
    new = {new {x}}
end


%% Indexing Cell Arrays
% This is the biggest difference when dealing with cell arrays!

%Difference between () and {}
ca = [{1},{'a'},{true}];
A =  ca(1) %{1} class cell
B =  ca{2} %'a' class char
C =  ca(2) %{'a'} class cell



%% reverse cell array
ca = [{1},{'a'},{'Kantwon'}]
revCa = ca(end:-1:1) %--> {'Kantwon','a',1}


%When you index multiple places with curly braces, you only get back the
%first thing you index!

revCA2 = ca{end:-1:1}  % --> 'Kantwon'



%% take cell array of doubles, change to vector of doubles
ca = {4 5 6}; %--> [4 5 6]

%do with a loop
vec = []
for x = 1:length(ca)
    vec = [vec ca{x}]
end


%what if i didnt use {}, and used () instead to index

vec = []
for x = 1:length(ca)
    vec = [vec ca(x)]
end

%or
%do with indexing
ca = {4,2,9,8};
vec1 = ca{1:end}% just one number in this case, 4
vec2 = [ca{1:end}]% vector [4 2 9 8]
vec3 = [ca{:}]

ca2 = {'1','hi',[2,3],3,2}
new2 = [ca2{:}]; %does wierd stuff...don't do it if you have diff classes


%% index chaining

%In one line, you can chain together multiple instances of indexing. 
%The only thing you have to remember is that if you choose to use a 
%parenthesis to index, you can't follow that with a curly brace. 

ca2 = {'1',  'hi',  [2,3],  {[10,6],'hello'}};
%this is the same as 
%ca2Too = [{'1'} {'hi'} {[2 3]} {{[10 6] 'hello'}}]


A = ca2{2} %'hi' class char
B = ca2{3} %[2 3] class double
B2 = ca2(3) % {[2,3]} class cell
C =  ca2{2}(2)%'i' class char
C2 =  ca2{2}{2}%errors
Dwrong = ca2(4){1} %this produces an error because you can't have curly braces following a parentheses indexing
D  = ca2{4}(1) % {[10,6]} class cell
D2 = ca2{4}{1} %[10,6] class double
E = ca2{4}{1}(2) % 6 double
E2 = ca2{end}{1}(end)% 6 double
F = ca2{4}{2}(2:end) %'ello' class char


%% Using functions with cell arrays

%logical indexing
ca = {'b','c','a'};
mask = ca == 'a' %ERRORS, CANT USE LOGICAL OPERATORS

mask2 = [true false true]
thing1 = ca(mask2) % --> {'b','a'}
thing2 = ca{mask2} % --> only get back first thing indexed 'b'


%strcmp
ca = {'b','c','a'};
log = strcmp(ca,'a'); %[false false true]
A = ca(log); %{'a'}


%what about nested cell?
ca = {'b','c',{'a'}};
log2 = strcmp(ca,'a'); %[false false false]

%strfind
ca = {'the','hey','horse'}
inds = strfind(ca,'he') %{2,1,[]}


%sort
%Only works on cell arrays of all chars
ca = {'b','c','a'}
[sorted ind]= sort(ca); %sorted --> {'a','b','c'} inds --> [3 1 2]

ca2 = {'broom','cat','apple','art','basketball'}
[sorted ind]= sort(ca2) % --> 

%num2cell
A = num2cell([2 8 1]) %{2 8 1}
%cell2mat
B = cell2mat({2 8;5 6}) %[2 8;5 6]



%iscell
C = iscell({'hello',true',[3 2]}) %true



%% Deleting cell arrays

%exact same way with vectors

ca = {'hi',1,[2,4]};
ca = [{'hi'},{1},{[2,4]}]

%CORRECT WAY
ca(2) = []; %{'hi',[2,4]}

%ALL INCORRECT
ca{2} = []; %cell array is still length 3 {'hi',[],[2,4]}
ca{2} = {}; %cell array is still length 3{'hi',{},[2,4]}
ca(2) = {}; %errors



%% Example 1
%give a 1x1 nested cell array, determine how many times 
%the contents are nested
%ex: ca = {{{{{{{'Serena Williams is a goddess'}}}}}}}
%   depth = 7;
ca = {{{{{{{'Serena Williams is a goddess'}}}}}}};


depth = 0
while iscell(ca)
    ca = ca{1}
    depth = depth + 1
end






%% Example 2

%given a cell array with nested cells, determine the depth 
%and position
%of the cell array that is nested the most
% ex: ca = {'hi',{{{[1,2]}}},{true}}
% maxDepth = 4, position = 2;
allDepths = []
for x = 1:length(ca)
    currCell = ca(x)
    depth = 0
    while iscell(currCell)
        currCell = currCell{1}
        depth = depth + 1  
    end
    allDepths = [allDepths depth]
end
[maxDepth,position] = max(allDepths)


%change outter for loop to while
x = 1
while x <= length(ca)

    currCell = ca(x)
    depth = 0
    while iscell(currCell)
        currCell = currCell{1}
        depth = depth + 1  
    end
    allDepths = [allDepths depth]
    x = x + 1
end


%% Examples 

%% Example 
% Look at Example problem 1 in the course notebook 


%% Example 
% Look at Example problem 2 in the course notebook 




%% Example 
%Given a string, create a Nx2 cell array where the first column are unique
%words from the string, and the second column is the number of times that
%string has occured. Your cell array should be sorted such that the most
%frequent word is in the first row and the least frequent word is in the
%last row. Your code should ignore punctuation and word frequencies should
%be case insensitive

%str = 'hey hey hey there pal pal!'
%out = {'hey', 3;
%       'pal', 2;
%       'there', 1}
 

lyrics = lower(lyrics);
mask = (lyrics >= 'a' & lyrics <= 'z') | lyrics == ' ';
lyrics = lyrics(mask);
[word,rest] = strtok(lyrics);
uniqueWords = {};
uniqueCounts = [];
while ~isempty(word)
    if ~any(strcmp(word,uniqueWords))
        uniqueWords = [uniqueWords {word}];
        uniqueCounts = [uniqueCounts 1];
    else
        uniqueCounts(strcmp(word,uniqueWords)) = uniqueCounts(strcmp(word,uniqueWords)) + 1
    end
    [word,rest] = strtok(rest);
end
[uniqueCounts,inds] = sort(uniqueCounts,'descend');
uniqueWords = uniqueWords(inds);
out = [uniqueWords' , num2cell(uniqueCounts)'];
    

