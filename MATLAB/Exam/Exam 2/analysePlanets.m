function readable=analysePlanets(planets, data)

    pla = [];
    while ~isempty(planets)
        [tk, rest] = strtok(planets, ' ');
        pla = [pla tk];
    end
    sumVec = sum(data');
    readable = [];
    for i= 1:length(sumVec)
        readable = [readable pla(i) ':' ' ' sumVec(i) '.'];
    end
end