function Eion = nernstPotential (Z, Cout, Cin)
    Eion = floor((61 ./ Z) * log10(Cout./Cin));
end