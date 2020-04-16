% % command window
% A = 2;
% B = 3;
% [out1, out2] = mysteryFunction(A,B);

function [output1, output2] = mysteryFunction(in1,in2)
A = in1 + in2;
B = floor(A./in1);
in1 = in1 .* 3;
output1 = B;
output2 = in1;
end