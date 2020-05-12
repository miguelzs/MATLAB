function [out] = badRobot(data)

    raw_ca = readcell(data);
    header = raw_ca(1, :); %save header for later
    raw_ca(1, :) = [];
    x_in = raw_ca(:, 1); %save x values
    y_in = raw_ca(:, 2); %save y values
    
    mask = ~strcmp(y_in, 'Error'); %find errors, and save the contraire
    y_f = interp1(cell2mat(x_in(mask)'), cell2mat(y_in(mask)'), cell2mat(x_in)'); %interpolate 
    y_f = round(y_f, 2);
    
    yf_ca = [];
    for i = 1:length(y_f) %putting doubles in cells
        
        yf_ca = [yf_ca; {y_f(i)}];
    end
    
    out = [x_in yf_ca]; %concatenate everything back
    out = [header; out]; 
end

%% in/out
%   in excel file
%   out completed data set in excel file
%% Steps
% [total interpolated Ys] = interp1([Xs of original function], [Ys of original], [totalXs])
% use the data that has 