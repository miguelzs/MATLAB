clear
clc

figure
clf
hold on

theta = linspace(0, 4*pi, 200);
sinTheta = sin(theta);
cosTheta = cos(theta);
tanTheta = tan(theta);
plot(theta, sinTheta,'g');
plot(theta, cosTheta,'r');
% plot(theta,tanTheta, 'b');
title('Sine/Cos of Tehta');
xlabel('Theta in radians');
ylabel('Sine/Cosine of Theta');

grid on;
axis([0 15 -3 3]);

figure
th = linspace(0, 2*pi)
plot( sin(th), cos(th));
axis equal

figure
th = linspace(0, 20*pi, 500)
plot3( sin(th), cos(th), th);
