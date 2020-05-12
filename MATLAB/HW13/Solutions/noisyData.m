function noisyData(vec, r)

    t = vec(1, :);
    sensor = vec(2, :);
    
    filter = sensor(1);
    for i = 2:length(sensor)
        
        a = r.*filter(i-1);
        b = 1-r;
        c = a + b*sensor(i);
        filter = [filter c];
        
    end
    hold on
    plot(t, sensor, '-.r');
    plot(t, filter, 'b');
    axis tight;

end

% y? = r ? y?(n-1) + (1-r) ? sensor?(n)
% (r*filter(n-1) + (1-r)*sensor?(n))
% After filtering the sensor data, first plot your original data in a red 
% dashed-dotted line, then plot your filtered data in a blue solid line 
% on the same graph. Format your graph with ?axis tight?.
