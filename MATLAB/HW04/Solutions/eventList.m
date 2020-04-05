function [mistaken, positions] = eventList(events, belongs)

%     receive: events, true/false. give: ~participatingevents, cells of
%     participating events.

    vec = (1:6:length(events)); %vec has the index of the first letter of each sport 
    wrong_index = vec(~belongs); %indexing the 1st cells of the wrong sports
    mistaken = [events(wrong_index(1):wrong_index(1)+5) events(wrong_index(2):wrong_index(2)+5)]; %events(wrong_index(3):wrong_index(3)+5) events(wrong_index(4):wrong_index(4)+5) events(wrong_index(5):wrong_index(5)+5)];
    mask = vec(belongs);
    positions = 1+(mask-1)./6;
    
end
