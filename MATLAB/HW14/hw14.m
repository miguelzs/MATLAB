%% Homework 14: Extra Credit
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
% Name: Miguel Zadorosny Silva
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
% - hw14.m
% - socialDistancing.m
% - luigisMansion.m
% - zoomVsBluejeans.m
% - marchSadness.m
% - puzzled.m
% 
%% Test Cases
% 
%% socialDistancing
%    clear
%    clc
%    load('socialDistancing.mat');
% 
%    [statement1] = socialDistancing(crowd1);
%    [statement1_soln] = socialDistancing_soln(crowd1);
%    check1 = isequal(statement1, statement1_soln);
% 
%    [statement2] = socialDistancing(crowd2);
%    [statement2_soln] = socialDistancing_soln(crowd2);
%    check2 = isequal(statement2, statement2_soln);
% 
%    [statement3] = socialDistancing(crowd3);
%    [statement3_soln] = socialDistancing_soln(crowd3);
%    check3 = isequal(statement3, statement3_soln);

% 
%% luigisMansion
%    clear
%    clc
%    load('luigisMansion.mat');
% 
%    [route1] = luigisMansion(maze1);
%    [route1_soln] = luigisMansion_soln(maze1);
%    check1 = isequal(route1, route1_soln);
% 
%    [route2] = luigisMansion(maze2);
%    [route2_soln] = luigisMansion_soln(maze2);
%    check2 = isequal(route2, route2_soln);
% 
%    [route3] = luigisMansion(maze3);
%    [route3_soln] = luigisMansion_soln(maze3);
%    check3 = isequal(route3, route3_soln);

% 
%% zoomVsBluejeans
%    clear
%    clc
%    load('zoomVsBluejeans.mat');
% 
%    zoomVsBluejeans(filename1, filename2);
%    zoomVsBluejeans_soln(filename1, filename2);
%    check1 = isequal(fileread('avatar1_avatar2_comparison.txt'), fileread('avatar1_avatar2_comparison_soln.txt')); 
% 
%    zoomVsBluejeans(filename3, filename4);
%    zoomVsBluejeans_soln(filename3, filename4);
%    check2 = isequal(fileread('tragedy1_tragedy2_comparison.txt'), fileread('tragedy1_tragedy2_comparison_soln.txt'));
% 
% 
%    zoomVsBluejeans(filename5, filename6);
%    zoomVsBluejeans_soln(filename5, filename6);
%    check3 = isequal(fileread('goofyGoober1_goofyGoober2_comparison.txt'), fileread('goofyGoober1_goofyGoober2_comparison_soln.txt'));
% 
% 
% 
%% marchSadness
   clear
   clc
   load('marchSadness.mat');

   marchSadness(x2019_20_Season_Stats, bracket1);
   marchSadness_soln(x2019_20_Season_Stats, bracket1);


   marchSadness(x2019_20_Season_Stats, bracket2);
   marchSadness_soln(x2019_20_Season_Stats, bracket2);


   marchSadness(x2019_20_Season_Stats, bracket3);
   marchSadness_soln(x2019_20_Season_Stats, bracket3);
% 
% 
% 
%% puzzled
%    clear
%    clc
%    load('puzzled.mat');
% 
%    puzzled(filename1, pos1);
%    puzzled_soln(filename1, pos1);
% 
% 
%    puzzled(filename2, pos2);
%    puzzled_soln(filename2, pos2);
% 
% 
%    puzzled(filename3, pos3);
%    puzzled_soln(filename3, pos3);

% 
