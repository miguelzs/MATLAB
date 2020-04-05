%% Homework 03: Vectors and Vector Functions
%
%% Honor Code Agreement
%
% By entering my name, GT Username, and Section below, I am confirming that
% I am bound by the Georgia Tech Honor Code, which can be found here: 
%
% http://osi.gatech.edu/content/honor-code.
%
% Failing to agree will result in a 0 for the entire assignment.
%
% Name: Miguel Zadorosny 
% GT Username (gburdell3): msilva38
% Section: C
%
%% Banned Functions
%
% In general, you are allowed to use any function you see fit. However, 
% there are a few functions you are NOT allowed to ever use. Additionally, 
% specific homework problems may specify that you cannot use certain
% functions. Code that uses any of these functions will automatically 
% receive a 0.
%
% NEVER use the following functions in your function code:
%
% * input
% * solve
% * fclose all
% * close
% * load
% * figure
% * imshow
% * image
% * global
%
%% Files to Submit
% 
% For full credit, you should submit *ONLY* the following files to Canvas 
% by the assignment deadline:
%
% - hw03.m
% - calcGravity.m
% - formatBookTitle.m
% - repWord.m
% - wordLen.m
% - dataMixer.m
%
%% Test Cases
%
%% calcGravity
   
%    clc
%    clear
%    
%    load('calcGravity.mat');
% 
%    [Fg1] = calcGravity(mass1, mass2, distance1);
%    [Fg1_soln] = calcGravity_soln(mass1, mass2, distance1);
%    check1 = isequal(Fg1, Fg1_soln);
% 
%    [Fg2] = calcGravity(mass3, mass4, distance2);
%    [Fg2_soln] = calcGravity_soln(mass3, mass4, distance2);
%    check2 = isequal(Fg2, Fg2_soln);
% 
%    [Fg3] = calcGravity(mass5, mass6, distance3);
%    [Fg3_soln] = calcGravity_soln(mass5, mass6, distance3);
%    check3 = isequal(Fg3, Fg3_soln);
%
%
%% formatBookTitle
   
%    clc
%    clear
%    
%    load('formatBookTitle.mat');
% 
%    [formatted1] = formatBookTitle(unformatted1);
%    [formatted1_soln] = formatBookTitle_soln(unformatted1);
%    check1 = strcmp(formatted1, formatted1_soln);
% 
%    [formatted2] = formatBookTitle(unformatted2);
%    [formatted2_soln] = formatBookTitle_soln(unformatted2);
%    check2 = strcmp(formatted2, formatted2_soln);
% 
%    [formatted3] = formatBookTitle(unformatted3);
%    [formatted3_soln] = formatBookTitle_soln(unformatted3);
%    check3 = strcmp(formatted3, formatted3_soln);

%
%% repWord

%    clc
%    clear
% 
%    load('repWord.mat');
% 
%    [modified1] = repWord(original1, wordFind1, wordReplace1);
%    [modified1_soln] = repWord_soln(original1, wordFind1, wordReplace1);
%    check1 = strcmp(modified1, modified1_soln);
% 
%    [modified2] = repWord(original2, wordFind2, wordReplace2);
%    [modified2_soln] = repWord_soln(original2, wordFind2, wordReplace2);
%    check2 = strcmp(modified2, modified2_soln);
% 
%    [modified3] = repWord(original3, wordFind3, wordReplace3);
%    [modified3_soln] = repWord_soln(original3, wordFind3, wordReplace3);
%    check3 = strcmp(modified3, modified3_soln);

%
%% wordLen

%    clc
%    clear
%    
%    load('wordLen.mat');
% 
%    [vec1] = wordLen(sentence1);
%    [vec1_soln] = wordLen_soln(sentence1);
%    check1 = isequal(vec1, vec1_soln);
% 
%    [vec2] = wordLen(sentence2);
%    [vec2_soln] = wordLen_soln(sentence2);
%    check2 = isequal(vec2, vec2_soln);
%    
%    [vec3] = wordLen(sentence3);
%    [vec3_soln] = wordLen_soln(sentence3);
%    check3 = isequal(vec3, vec3_soln);
   
%
%% dataMixer

%    clc
%    clear
% 
%    load('dataMixer.mat');
% 
%    [data1] = dataMixer(vec1a, vec2a);
%    [data1_soln] = dataMixer_soln(vec1a, vec2a);
%    check1 = isequal(data1, data1_soln);
%    
%    [data2] = dataMixer(vec1b, vec2b);
%    [data2_soln] = dataMixer_soln(vec1b, vec2b);
%    check2 = isequal(data2, data2_soln);
%    
%    [data3] = dataMixer(vec1c, vec2c);
%    [data3_soln] = dataMixer_soln(vec1c, vec2c);
%    check3 = isequal(data3, data3_soln);
%