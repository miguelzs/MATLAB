function [x1, x2] = quadForm(a, b, c)

    x1 = round(((- b + sqrt(b^2- 4.*a.*c))./2*a), 2);
    x2 = round(((- b - sqrt(b^2- 4.*a.*c))./2*a), 2);

end 

