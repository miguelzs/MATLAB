function [acc, force] = newtonsLaw(vIn, vFin, delTime, mass)
    unrounded_acc = (vFin - vIn)./ delTime;
    unrounded_force = mass * unrounded_acc;
    acc = round(unrounded_acc, 2);
    force = round(unrounded_force, 2);
end