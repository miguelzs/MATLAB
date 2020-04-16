% % command window
% score = 5;
% total = suGolf(10,score);

function score = suGolf(strokes, par)
muli = floor(1.37) + 2;
rel = mod(strokes ./ par, par); % mod(2, 5) -> remainder of a / b
score = strokes - muli;
strokes = helper(score, muli);
end 

function score = helper(rel,x)
x = x .* 2 + 2;
score = mod(rel,x);
end