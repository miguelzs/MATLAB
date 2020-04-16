
function examaaaa(r)

ca = readcell('Countries.xlsx');
outname = ['Countries_Info.xlsx'];
out = [];
    for i = 1:length(ca)
        file = ca{i};
        country_id = fopen( file, 'r');
        line = fgetl(country_id);
        out = [ out; {file(1:end-4)} {line}];
        fclose(country_id);
    end
writecell( out, outname);
end