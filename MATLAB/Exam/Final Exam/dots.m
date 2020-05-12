function dots(day, games)
subplot(2, 1, 1);
hold on
plot(day, games, '--b');
xlabel('Day');
ylabel('Games Played');
coeffs1 = polyfit(day, games, 2);
coeffs = polyint(coeffs1);
ys = polyval(coeffs, day);
plot(day, ys, 'og');
ga = interp1(day, games, 14, 'linear', 'extrap');
plot(14, ga, '*b');
hold off
subplot (2, 1, 2);
hold on
points = linspace(0, 2*pi);
r = 5;
x = r.* cos(points);
y = r.* sin(points);
plot(x, y, 'k');
x2 = linspace(-5, 5);
y2 = (x2).^ 2;
plot(x2, y2, '.m');
axis equal;
hold off
end