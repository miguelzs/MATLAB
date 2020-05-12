function out = socialDistancing(crowd)
    % first I resize the raw matrix so that i can apply the mask to the
    % borders. i need every person in the matrix to be in the center of a
    % least seven x seven matrix. I do that by adding char to the initial
    % matrix.
    [row, col] = size(crowd); 
    add_col = zeros(row, 3); %what i'll add to the columns
    add_row = zeros(3, col+6); %what i'll add to the rows
    % concatenate
    crowd = [char(add_col) crowd char(add_col)]; 
    crowd = [char(add_row); crowd; char(add_row)];
    % create the mask of forbidden spots
    mask_people = crowd == 'x';
    mask_3ft = logical([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0; 1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);
    % find where the people is
    [r, c] = find(mask_people);
    counter = 0;
    for i = 1:length(r) % the loop goes over every person in the matrix
        ft3 = crowd(r(i)-3:r(i)+3, c(i)-3:c(i)+3); % take a sample of the crowd around that person
        around = ft3(mask_3ft); % apply mask
        ppl_around = find(around == 'x'); % look for people
        if length(ppl_around)>=2 % more than one, fails
        counter = counter + 1;
        end
    end
    % print final strings
    if counter==0
        out = sprintf('This crowd is following social distancing guidelines');
    else
        out = sprintf('%d person(s) are violating social distancing rules here', counter);
    end
end

% my goal is to use a mask that looks only into the forbidden area around each person. if in
% the forbidden area there's more than one person, that person is not
% following the guidelines.
