%2D Plotting Basics

% clear %clears all variables in workspace
% clc %clears the command window
% close all %closes all figures

% figure  %open a new figure
% clf %clears a figure
% x1 = [1 3 5 7 9]
% y1 =[6 7 4 4 10]
% plot(x1,y1)  %basic plot with line interpreted

% Tricking it out
%            b     blue          .     point              -     solid
%            g     green         o     circle             :     dotted
%            r     red           x     x-mark             -.    dashdot 
%            c     cyan          +     plus               --    dashed   
%            m     magenta       *     star             (none)  no line
%            y     yellow        s     square
%            k     black         d     diamond
%            w     white         v     triangle (down)
%                                ^     triangle (up)
%                                <     triangle (left)
%                                >     triangle (right)
%                                p     pentagram
%                                h     hexagram
% plot(x1,y1,'r') 
% plot(x1,y1,'pr:') 
% plot(x1,y1,...
%     'marker','pentagram',...
%     'markersize',24,...
%     'markeredgecolor','r',...
%     'markerfacecolor','b',...
%     'linestyle',':',...
%     'color','g',...
%     'linewidth',5)
% plot(x1,y1,'b','linewidth',4) 

%new figure
% figure  %open a new figure
% clf %clears a figure
% x2 = [1 3 5 7 9]
% y2 = [0 9 9 8 1]
% plot(x2,y2, 'p','markersize', 18)


%two plots same figure
% figure
% clf
% hold on
% 
% x1 = [10 30 50 70 90]
% y1 =[6 7 4 4 10]
% plot(x1,y1)
% 
% x2 = [1 3 5 7 9]
% y2 = [0 9 9 8 1]
% plot(x2,y2,'r')

%Axis control
% figure
% clf
% hold on
% x1 = [10 30 50 70 90]
% y1 =[6 7 4 4 10]
% plot(x1,y1)
% x2 = [1 3 5 7 9]
% y2 = [0 9 9 8 1]
% plot(x2,y2,'r')

% axis tight
% axis equal
% axis square
% axis off
% axis([-20 20 -10 10])
% grid on 

%Annotations
% title('2D Plotting Demo for CS1371')
% legend('data1','data2')
% legend('data1', 'data2','Location','SouthOutside')
% legend boxoff
% text(2,2,'Yeah!')
% text(x2,y2,['point1'; 'point2'; 'point3'; 'point4'; 'point5'])
% xlabel('X-axis','fontsize',24,'color','r')
% ylabel('Y-axis');

%Subplots
% figure
% % 
% subplot(2,2,1)
% x1 = [1 3 5 7 9]
% y1 =[6 7 4 4 10]
% plot(x1,y1)
% title('Plot One')
% 
% subplot(2,2,2)
% x1 = [1 3 5 7 9]
% y1 =[6 7 4 4 10]
% plot(x1,y1)
% title('Plot Two')
% 
% subplot(2,2,3)
% x2 = [1 3 5 7 9]
% y2 = [0 9 9 8 1]
% plot(x2,y2,'r')
% title('Plot Three')
% 
% subplot(2,2,4)
% x2 = [1 3 5 7 9]
% y2 = [0 9 9 8 1]
% plot(x2,y2,'r')
% title('Plot Four')
