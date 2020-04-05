function res = isReceiverOpen(receiver, defender)
% i receive vector with spaces and R or D, r stands for receiver, D for
% defender. i have to elimanate the receiver blocked by the defnender from
% [receiver]. i will do that by creating a logical with [defender] where Ds
% are false ' ' are true. it worked but i didnt realize
% length(defender)~=length(receiver) was possible. now i have to fix this
% situation. to solve i foun the sites where there was a space in d and a
% receiver i both vectors.
    letter = char(39);
    mask = (receiver + defender)==114;
    hill = find(mask, 1);
    if (length(hill)==1)
        res = sprintf('Patrick Mahomes completed the pass for %d yards!!', hill.*5);
    else
        res = sprintf('Patrick Mahomes%s pass was incomplete!', letter);
    end
    
end


