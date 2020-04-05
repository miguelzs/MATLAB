function [out] = mostAdmired(students, letters)

    amount = 0;
    highest = amount;
    for i = students
        for j = letters
            if (i==j)
                amount = amount +1;
            end
        end
        if (amount>highest)
            highest = amount;
            loved = i;
        end
        amount = 0;
    end
    out = sprintf('Student %d has %d secret admirers!', loved, highest);
    
end