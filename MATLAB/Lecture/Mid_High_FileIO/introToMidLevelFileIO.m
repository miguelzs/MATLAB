clear
clc

% %%Comma Separated
data = csvread('jackets.csv');
data
% % % 
[rows cols] = size(data);
for r = 1:rows
    data(r,cols+1) = mean(data(r,1:3))
end
data
% % % 
csvwrite('jackets_avg.csv',data)


%% Delimited
% A = round(rand(5,10)*20)
% dlmwrite('jackets_tab.txt',A,'delimiter','\t');
% dlmwrite('jackets_semi.txt',A,'delimiter',';');
% % 
% data1 = dlmread('jackets_tab.txt')
% data2 = dlmread('jackets_semi.txt')