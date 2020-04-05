function T = arrhenius(k, k0, Ea)
    
    unrounded_T = -Ea ./ (8.314 .* log(k./k0));
    T = round(unrounded_T, 2);
    
end