            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %          Numerical Methods and Plotting        %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Being able to analyze and visualize data at scale is one of the huge
%benefits of learning computer science. This section talks about taking in
%data and creating plots in addition to introducing some approximation 
%methods 
                                
                                %% Plotting
%Plotting is relatively simple. It is just one function. You pass in the x
%and y values and get a nice line graph. You can also add in style
%modifiers in order to create different colors, line styles, and point
%styles. 
                                
                                

%Basic Syntax: plot(x,y) 
%The length of x has to equal the length of y
%Without any style modifiers, you automatically get all of your points
%connected by blue solid lines. 

%% Default Plot
x = 0:.05:2*pi;
y = sin(x).*log(x).*cos(x.^2);
plot(x,y)

%% Plot with Style Modifiers
%You can change the aesthetics of your plot with style modifiers. There are
%3 categories of style modifiers: Line styles, Marker Styles, Color Styles

%Line Styles
% -	Solid line (default)
% --	Dashed line
% :	Dotted line
% -.	Dash-dot line

%Marker Styles
% o	Circle
% +	Plus sign
% *	Asterisk
% .	Point
% x	Cross
% s	Square
% d	Diamond
% ^	Upward-pointing triangle
% v	Downward-pointing triangle
% >	Right-pointing triangle
% <	Left-pointing triangle
% p	Pentagram
% h	Hexagram

%Color Styles
% y   yellow
% m   magenta
% c   cyan
% r   red
% g   green
% b   blue
% w   white
% k   black

%In the 3rd input of the plot command, you construct a string that has a
%the style modifications you would like. The order of them does not matter.


%% Create a red line graph (by default it is solid and the points are just
%dots
plot(x,y,'r')

%% Create a dashed black line
plot(x,y,'--k') %could also be plot(x,y,'k--')

%% Create a scatter plot with markers as black circles
plot(x,y,'ok') %specifying a marker size and not a line style only shows the markers

%% Create a plot with red dotted lines and diamond markers
plot(x,y,'r--d')

%% Adding Labels and Titles to Graphs and Changing Axes
%It is good practice to always label your axes and have axis bounds that
%aren't deceptive. 

%title(str) Adds a title to the plot
%xlabel(str) Adds a label to x axis
%ylabel(str) Adds a label to y axis
%axis([minX,maxX,minY,maxY]) Changes the bounds of the plot
%axis square Use axis lines with equal lengths. Adjust the increments between data units accordingly.
%axis equal Use the same length for the data units along each axis

%% Adding Titles,Labels, and Axes

plot(x,y,'r--d')
title('y = sin(x).*log(x).*cos(x.^2) from x = [2,4]')
xlabel('X Data')
ylabel('Y Data')
axis([2,4,-2,2])


%% Closed Shapes
%The plot command plots the points in the order you give it and connects
%adjacent points. That being said, if you want to create a closed shape,
%you have to repeat the first point as the last point so that the final
%connection happens


%% Plotting a Unit Square Centered at Origin INCORRECTLY
x = [0.5,0.5,-0.5,-0.5]
y = [0.5,-0.5,-0.5,0.5]
plot(x,y,'r','LineWidth',10)
axis([-1,1,-1,1])
%Need to repeat first point

%% Plotting a Unit Square Centered at Origin
x = [0.5,0.5,-0.5,-0.5,0.5]
y = [0.5,-0.5,-0.5,0.5,0.5]
plot(x,y,'r','LineWidth',10)
axis([-1,1,-1,1])
axis square


%% Plotting a Circle 
%In order to plot a circle, we have to use polar coordinates. There is no
%such thing as a curved line in a computer, just the illusion of curved
%lines by having a lot of little small straight lines. The more points you
%add when creating a circles changes it from looking like a polygon to a
%curved shape. 

%The generic formuals for calculating the x and y coordinates of a circle
%in polar coordinates is: 

% x = (radius * cos(theta)) + x_translation
% y = (radius * sin(theta)) + y_translation

%% Plotting a Circle with Few Points
th = linspace(0,2*pi,6);
r = 3;
x = r .* cos(th);
y = r .* sin(th);
plot(x,y,'k','LineWidth',5)

%% Plotting a Circle with 100 Evenly Space Points
th = linspace(0,2*pi);
r = 3;
x = r .* cos(th);
y = r .* sin(th);
plot(x,y,'k','LineWidth',5)
axis square

%% Plotting a Top Half Circle with 100 Evenly Space Points
th = linspace(0,pi);
r = 3;
x = r .* cos(th);
y = r .* sin(th);
plot(x,y,'k','LineWidth',5)
axis square




%% Plotting Multiple Plots on One Figure 
%If you have noticed, in the previous examples, I just keep calling the
%plot command and it keeps giving me a new plot. Each time it is
%overwriting the old plot. There are multiple ways to fix this. 

%% method 1: using extra inputs in plot command 
%plot(x1,y1,style1,x2,y2,style2,....)
x = 1:10;
y = x.^2;
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x,y,'g--',x2,y2,':b','linewidth',8);



%% method 2: using hold on 
th = linspace(0,2*pi);
r = 500;
x = r * cos(th);
y = r * sin(th); 

plot(x,y)

%hold on allows plots commands afterwards NOT to overwrite that is already 
%on the plot. If this wasn't here, I would only have the magenta square
hold on
%now this plot has both the circle and the square
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x2,y2)
hold off



%% Creating Subplots
%One interesting thing to create is a plot that contains multiple plots. We
%call this a subplot. To use the subplot command, you first need to
%determine the overall size of your subplot in rows and columns. Then when
%you call the subplot command, you give it the dimensions and then as the
%3rd input the index of the subplot you want to open. Subplot indicies are
%BACKWARDS from linear indicies. They increase going across the rows. 

%Once you call the subplot command, then you can do all of your plotting
%and stylizing to that part of the figure. 

%Basic Syntax: subplot(row,cols,ind)

subplot(2,2,1)
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x2,y2)



%once you call subplot, until you call another subplot, all the plotting
%and figure formatting will happen to that subplot, NOT the other ones. 
subplot(2,2,4) 
th = linspace(0,2*pi);
r = 5;
x = r * cos(th);
y = r * sin(th); 
plot(x,y)
title('OMG A CIRCLE')
axis square


% subplot(2,2,1)
% title('uhhhh')
% th = linspace(0,2*pi);
% r = 5;
% x = r * cos(th);
% y = r * sin(th); 
% plot(x,y)
% title('OMG A CIRCLE')
% axis square
           
                 %% What is numerical methods?
%Numerical methods is just mathematical guessing and approximation
%The three topics that we go over in this class are: 
%Interpolation and extrapolation 
%Curve fitting
%Calculus stuff


            %% What is interpolation and extrapolation
%Interpolation is guessing new data points that are inside of your domain
%Extrapolation is guessing new data points that are outside of your domain

                    %How to do interpolation in matlab 

%% newy = interp1(x,y,newx)
%uses linear interpolation in order to estimate new points

x = 1:50;
y = x.^2; 
newy = interp1(x,y,[4.5,5.1,9.7])


%%guess newx values 
%newx = interp1(y,x,newy)



%% newy = spline(x,y,newx)
%uses spline interpolation in order to estimate new points 
x = 1:50;
y = x.^2; 
newySpline = spline(x,y,[4.5,5.1,9.7])




                       %% How to do extrapolation in matlab

%% newy = interp1(x,y,newx)
x = 1:50;
y = x.^2;
newyExtrap = interp1(x,y,[3.5,50.5,5.76]);




%2nd value will be NaN because you are trying to interpolate 
%on values outside of the domain


%% newy = interp1(x,y,newx,method,'extrap')
%other methods are: spline,linear,cubic...look at documentation for more!
%%newy = interp1(x,y,newx,'linear','extrap')
% newy = interp1(x,y,newx,[],'extrap') %defaults to linear extrap
x = 1:50;
y = x.^2;
newx = [3.5,5.76,50.5];
newyExtrap2 = interp1(x,y,newx,'linear','extrap');

%last value will be extrapolated. Other values will be interpolated

%% newy = spline(x,y,newx)
x = 1:50;
y = rand(1,50)*3+730; %can be random numbers 
newyExtrap3 = spline(x,y,[3.5,5.76,50.5]);


%automatically extraps and interps for you with no extra inputs


%IMPORTANT NOTE: INTERPOLATION AND EXTRAPOLATION ONLY LOOK AT LOCAL POINTS
%THIS MEANS THAT YOUR GUESS CAN BE VERY WRONG IF YOUR NEWX IS SURROUNDED
%BY OUTLIERS!!!!




                        %% What is curve fitting
%Curve fitting is producing lines of best fit. 


%% coeffs = polyfit(x,y,order) 

x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
%create coeff vector for a 1st order polynomial that fits the data 
coeffs = polyfit(x,y,1)


%relationship between coeffs vector and data
%%length(coeffs) = order + 1;

%% newy = polyval(coeffs,newx)
x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
coeffs = polyfit(x,y,4);
newy = polyval(coeffs,[3.5,10, 12]);


%plug in the newx values to the polynomial
%NOTE: although my newx is techically the same as my original x values, it
%is not guaranteed that I will get back the original y values. This is
%because polyval is using the polynomial for a 4th order line of best fit
%in order to estimate newy values. This 1st order line is not guaranteed to
%go through each of the original data points. 



%% Plot lines of best fit
close all
x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
coeffs = polyfit(x,y,1); %fits first order line
newX = linspace(min(x),max(x)); %100 new x values between min and max
newY = polyval(coeffs,newX);
plot(x,y,'.','LineWidth',3,'MarkerSize',30)
hold on
plot(newX,newY,'r','LineWidth',3)

%% Highest order unique best fit 
%Guaranteed to produce a polynomial that passes through each point
%HOUBF = length(x) (or y) - 1

x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
%this will be the coeffs of a polynomial that is GUARANTEED to pass through
%each of my original data points. 
HOUBFcoeffs = polyfit(x,y,length(x) - 1)
newy = polyval(HOUBFcoeffs,[2 9 1 5.3 92.3])
 
%%IMPORTANT NOTE: CURVE FITTING IS BASED ON THE OVERALL TREND OF YOUR DATA
%%THEREFORE, OUTLIERS DON'T HAVE THAT MUCH OF AN EFFECT



                            %% Calculus 

%Derivatives 

%% numerical derivative 
%simiar to dy/dx
x = 1:50; 
y = x.^3+ 4.*x;
firstDeriv = diff(y)./diff(x)%firstDeriv is length 49 NOT 50

%second Deriv
secondDeriv = diff(firstDefriv)./diff(x(2:end))
%%get rid of first value to match dimensions
 

%% analytical derivative 
%polynomial is 4x^2 + 3x + 10
%want 8x + 3
%[4 3 10] --> [8 3]
coeffs = [4 3 10];
pows = length(coeffs)-1:-1:0;
derCoeffs = coeffs .* pows;
derCoeffs(end) = []



%% numerical integral 
x = 1:2:50;
y = x^2 + 3*x + 6;

%the actual area under the curve is the last value of the vector
intVec = cumsum(y);   %uses rectangular reimann sum
intVec2 = cumtrapz(x,y);%uses trapazoidal reimann sums

int = trapz(x,y); %one number that is the area under the curve using trapazoidal reimann sums

A = int == intVec2(end); %true
B = int == intVec(end); %might be false because 2 different methods


%% analytical integral 
%polynomial is 4x^2 + 3x + 10
%want polynomial (4/3)x^3 + (3/2)x^2 + 10x^1 + C
coeffs = [4 3 10];
%Another way of creating powers
% pows = length(coeffs)-1:-1:0 [2 1 0]
% intVec = coeffs./(pows+1); [4 3 10]/[3 2 1]
pows = length(coeffs):-1:1;
intVec = coeffs./pows;
C = 5; %some constant defined
intVec = [intVec C];




%% Example
%Give some x and why values, plot lines of best fit of increasing order
%until the Highest order unique best fit (HOUBF)
close all
%create some data points 
x = 1:50;
y = x.^.4 + sin(x);
plot(x,y,'.k','MarkerSize',30)

for order = 1:length(x) - 1 %%from 1 to the HOUBF
coeffs = polyfit(x,y,order); %find the coeffs of a line of best fit

%produce 100 evenly space points from the min x value to the max x value.
%These can then be used to plot a line of best fit
newx = linspace(min(x),max(x));

%plug in the 100 newx values into the polynomial found from polyfit. This
%will find the y values for the line of best fit. 
newy = polyval(coeffs,newx);

hold on %make all of the plots show up on the same figure
plot(newx,newy,'LineWidth',3) %plot the line of best fit
axis([min(x),max(x),min(y),max(y)]) %adjust the axis
pause(0.4) %wait a little
end


%% Past Test Example
%LOOK AT COURSE NOTEBOOK FOR EXAMPLES FROM PREVIOUS SEMESTERS' FINALS
%Look at Fall16FinalExam.docx
%Look at Fall16Exam3.docx

       
            
  