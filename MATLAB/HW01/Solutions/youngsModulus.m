function E = youngsModulus (F, A, deltaL, L0)
    Stress = F ./ A;
    Strain = deltaL ./ L0;
    E = Stress ./ Strain;
    E = round(E, 2);
end

