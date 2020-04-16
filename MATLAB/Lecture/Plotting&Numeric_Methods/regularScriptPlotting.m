x1 = [1 3 5 7 9];
y1 =[6 7 4 4 10];

figure
plot(x1,y1)  

figure
plot(x1,y1,'b','linewidth',4)

figure
x2 = [1 3 5 7 9];
y2 = [0 9 9 8 1];
plot(x2,y2, 'p','markersize', 18)

figure
plot(x1,y1, 'marker','pentagram', 'markersize',24, 'markeredgecolor','r', ...
    'markerfacecolor','b', 'linestyle',':', 'color','g', 'linewidth',5);
