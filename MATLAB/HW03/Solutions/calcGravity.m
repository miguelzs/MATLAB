function Fg = calcGravity(massA, massB, d)

Fg = round((((massA.*massB).*(6.67e-11))./d.^2),4);

end
