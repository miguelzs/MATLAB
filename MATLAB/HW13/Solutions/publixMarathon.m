function [t_alex] = publixMarathon(t, ca)

%     names = ca(:, 1); %save names
    ca(:, 1) = []; %only cells
    numbers = cell2mat(ca); %only doubles
    
%     Subplot 1
    subplot(2,2,1)
    
        for i = 1:4
            distances = cumtrapz(numbers(i,:));
            a = diff(numbers(i,:))./diff(t); %length(a) == length(t)-1
            jerk = diff(a)./diff(t(1:end-1)); %length t-2
            switch i
                case 1
                    
                            subplot(2,2,1)
                            hold on
                            raw_t = interp1(distances, t, 42.195);
                            t_alex = round(raw_t,2);
                            plot(t, distances, '-ro');
                            xlabel('time [hr]');
                            ylabel('distance [km]');
                            plot(t_alex, 42.195, 'dk');
                            
                            subplot(2,2,2)
                            hold on
                            plot(t, numbers(i,:), '-rd');
                            xlabel('time [hr]');
                            ylabel('velocity [km/hr]');
                            hold off
                            
                            subplot(2,2,3)
                            hold on
                            plot(t(1:end-1), a, '-rs');
                            xlabel('time [hr]');
                            ylabel('acceleration [km/hr^2]');
                            hold off
                            
                            subplot(2,2,4)
                            hold on
                            plot(t(1:end-2), jerk, '-r*');
                            xlabel('time [hr]');
                            ylabel('jerk [km/hr^3]');
                            hold off
                            
                case 2
                            subplot(2,2,1)
                            hold on
                            plot(t, distances, '-go');
                            hold off
                        
                            subplot(2,2,2)
                            hold on
                            plot(t, numbers(i,:), '-gd');
                            hold off
                            
                            subplot(2,2,3)
                            hold on
                            plot(t(1:end-1), a, '-gs');
                            hold off
                     
                            subplot(2,2,4)
                            hold on
                            plot(t(1:end-2), jerk, '-g*');
                            hold off
                   
                case 3
                            subplot(2,2,1)
                            hold on
                            plot(t, distances, '-bo');
                            hold off
                        
                            subplot(2,2,2)
                            hold on
                            plot(t, numbers(i,:), '-bd');
                            hold off
                            
                            subplot(2,2,3)
                            hold on
                            plot(t(1:end-1), a, '-bs');
                            hold off
                            
                            subplot(2,2,4)
                            hold on
                            plot(t(1:end-2), jerk, '-b*');
                            hold off
                    
                case 4
                            subplot(2,2,1)
                            hold on
                            plot(t, distances, '-mo');
                            hold off
                           
                            subplot(2,2,2)
                            hold on
                            plot(t, numbers(i,:), '-md');
                            hold off
                            
                            subplot(2,2,3)
                            hold on
                            plot(t(1:end-1), a, '-ms');
                            hold off
                            
                            subplot(2,2,4)
                            hold on
                            plot(t(1:end-2), jerk, '-m*');
                            hold off
            end
        end
end

%% IN/OUT

% in - total time (size N) double vector
%      a matrix with 4 runners (rows) and N+1 (columns)
%           1st column gives the names of runners, adn the follwing the
%           speed at t(i)
% out - image with subplots 
%       alex's final velocity


%% 1. Subplot 1

% a. Integrate the velocities to get distances
% b. Plot the each runner distance as it corresponds to the given time. The first runner
% distance should be in red, the second in green, the third in blue, and the last in
% magenta. Use continuous lines ('-') and denote points with a circle ('o').
% c. Mark the time when Alex finishes the marathon (this time should be rounded to 2
% decimal points) on your subplot as a black ('k') diamond ('d').
% d. Set Alex's rounded time when he crossed the finish line to be your only variable
% output for your function.
% e. Label the x-axis 'time [hr]' and the y-axis 'distance [km]'

%% 2. Subplot 2

% a. Plot the each runner's velocity as it corresponds to the given time. The first
% runner distance should be in red, the second in green, the third in blue, and the
% last in magenta. Use continuous lines ('-') and denote points with a diamond ('d').
% b. Label the x-axis 'time [hr]' and the y-axis 'velocity [km/hr]'

%% 3. Subplot 3

% a. Take the derivative of the velocity to get the second time derivative of position:
% acceleration.
% b. Plot the each runner's acceleration as it corresponds to the given time. Since the
% differential function leads you have a vector of length N-1, do not include the last time in the time vector when plotting. The first runner distance should be in red, the second in green, the third in blue, and the last in magenta. Use continuous lines ('-') and denote points with a square ('s').
% c. Label the x-axis 'time [hr]' and the y-axis 'acceleration [km/hr^2]'

%% 4. Subplot 4

% a. Take the derivative of the acceleration to get the third time derivative of position: jerk.
% b. Plot each runner's jerk as it corresponds to the given time. Since the differential function leads you have a vector of length N-2, do not include the last two times in the time vector when plotting. The first runner distance should be in red, the second in green, the third in blue, and the last in magenta. Use continuous lines ('-') and denote points with an asterix ('*').
%     c. Label the x-axis 'time [hr]' and the y-axis 'jerk [km/hr^3]'