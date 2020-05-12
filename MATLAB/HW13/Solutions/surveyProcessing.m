function [raw_yf, masked_yf] = surveyProcessing(xo, yo, n)
    %raw outputs
    raw_coef = polyfit(xo, yo, n);
    raw_yf = polyval(raw_coef, xo);
    %masking outliers
    [sorted, ~] = sort(yo);
    if mod(length(yo), 2) == 1 %1. and 2.
        q1 = median(sorted(1:length(yo)/2)); %median low
        q3 = median(sorted(length(yo)/2+1:end)); %median high
        
    else
        q1 = median(sorted(1:length(yo)/2)); %median low
        q3 = median(sorted(length(yo)/2+2:end)); %median high
    end  
    %3.
    iqr = q3-q1;
    
    mask = ~((yo < (q1 - 1.5*iqr)) | (yo > (q3 + 1.5*iqr)));
    
    masked_coef = polyfit(xo(mask), yo(mask), n);
    masked_yf = polyval(masked_coef, xo);

end

%% in/out
% double of x values
% double of y values
% order of polynomial

%% steps
% 1. Find Q1, the median of the lower half of the y-values
% 2. Find Q3, the median of the upper half of the y-values
% 3. Find the interquartile range (IQR), the difference between Q1 and Q3
% 4. Classify data points as outliers if they?re below Q1 - 1.5*IQR, or above Q3 + 1.5*IQR
% 5. Fit the data to an N-order polynomial (where N is the third input)
% 6. Evaluate the x-values using this polynomial and output the predicted y-values
% 7. Remove the outliers, and fit the remaining data to an N-order polynomial
% 8. Evaluate the x-values using this polynomial and output the predicted y-values
% You can use the median() function to calculate medians.
% Output both sets of y values in the same order that you were originally given.
% You may see a warning about poorly conditioned polynomials, you can ignore it.
% For fun, try comparing the SSE or R^2 of both models!

% coefficients = polyfit(x, y, Ndegrees);
% newy = polycal(coefficients, x);
% 
