function [out] = flowerRun(houses, stores)

    out = [];
    distance = 1000000;
    for i = houses
        for j = stores
            if (distance>abs(i-j))
                distance = abs(i-j);
                closest = j;
            end
        end 
        out = [out closest];
        distance = 1000000;
    end

end
