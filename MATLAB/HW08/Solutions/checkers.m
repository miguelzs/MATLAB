function [moves] = checkers(board)

    for i=1:8
        for i=1:8

end
% board gives an 8x8 board with pieces positioned as blue or red.
% im blue
% diagonally forward left and right
% first scan the array to find blues
% second if (checkers{i,j} == 'blue')
%     analyze whats in i-1, j+1, and i-1, j-1
%     exception: side columns
%     if (checkers{i-1, j+1} == 'avail')
%         moves