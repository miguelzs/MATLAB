%% Homework 11: High Level File I/O
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
% - hw11.m
% - breadDeadRedemption.m
% - slapMyBread.m
% - getThisBread.m
% - sliceAndDice.m
% - breadStats.m
%
%% Test Cases
%
%% breadDeadRedemption
%
%    load('breadDeadRedemption.mat');
% 
%    [files1] = breadDeadRedemption(start1);
%    [files1_soln] = breadDeadRedemption_soln(start1);
%    check1 = isequal((files1), (files1_soln));
% 
%    [files2] = breadDeadRedemption(start2);
%    [files2_soln] = breadDeadRedemption_soln(start2);
%    check2 = isequal((files2), (files2_soln));
% 
%    [files3] = breadDeadRedemption(start3);
%    [files3_soln] = breadDeadRedemption_soln(start3);
%    check3 = isequal((files3), (files3_soln));

%
%% slapMyBread
% 
%    clc
%    clear
%    load('slapMyBread.mat');
% 
%    slapMyBread(slap1);
%    slapMyBread_soln(slap1);
%    check1 = isequal(readcell('slap1.xlsx'), readcell('slap1_solved.xlsx'));
% 
% 
%    slapMyBread(slap2);
%    slapMyBread_soln(slap2);
%    check2 = isequal(readcell('slap2.xlsx'), readcell('slap2_solved.xlsx'));
% 
% 
%    slapMyBread(slap3);
%    slapMyBread_soln(slap3);
%    check3 = isequal(readcell('slap3.xlsx'), readcell('slap3_solved.xlsx'));
%
%
%
%% getThisBread
%
   clear
   clc
   load('getThisBread.mat');

   [total1] = getThisBread(grocery1, inventory1);
   [total1_soln] = getThisBread_soln(grocery1, inventory1);
   check1 = isequal(total1, total1_soln);

   [total2] = getThisBread(grocery2, inventory2);
   [total2_soln] = getThisBread_soln(grocery2, inventory2);
   check2 = isequal(total2, total2_soln);

   [total3] = getThisBread(grocery3, inventory3);
   [total3_soln] = getThisBread_soln(grocery3, inventory3);
   check3 = isequal(total3, total3_soln);
%
%
%% sliceAndDice
%
%    load('sliceAndDice.mat');
%
%    sliceAndDice(key1);
%    sliceAndDice_soln(key1);
%
%
%    sliceAndDice(key2);
%    sliceAndDice_soln(key2);
%
%
%    sliceAndDice(key3);
%    sliceAndDice_soln(key3);
%
%
%
%% breadStats
%
%    load('breadStats.mat');
%
%    breadStats(stats1, onsale1);
%    breadStats_soln(stats1, onsale1);
%
%
%    breadStats(stats2, onsale2);
%    breadStats_soln(stats2, onsale2);
%
%
%    breadStats(stats3, onsale3);
%    breadStats_soln(stats3, onsale3);
%
%
%