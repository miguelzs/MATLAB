% % command window
% in1 = 6;
% in2 = 3;
% [out2 out3 out1] = mixup(in2, in1);
% A = out1;
% B = out2;
% C = out3;

function [out1 out2 out3] = mixup(in1, in2)
add_up = in1 + in2;
in2 = in1;
in1 = in2;
out1 = abs(in2 - in1);
out2 = in1 .* in2;
out3 = out2./in1;
end 