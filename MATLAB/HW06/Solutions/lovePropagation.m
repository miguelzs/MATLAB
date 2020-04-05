function [prop] = lovePropagation(init, lim)

    prop = [init(1) init(2)];
    while prop(end)<=lim
        
        prop = [prop (prop(end-1)+ prop(end))];
        
    end
    prop(end) = [];
    
end