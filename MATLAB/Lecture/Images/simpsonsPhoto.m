clear
clc
close all

%Import images
frame = imread('simpsonsFrame.jpg');
bart = imread('bart.jpg');
lisa = imread('lisa.jpg');
homer = imread('homer.jpg');
marge = imread('marge.jpg');
maggie = imread('maggie.jpg');
family = imread('family.jpg');

%Show frame
figure;
imshow(frame);

%Show pics
figure
pics = {bart, lisa, homer, marge, maggie, family};
for index = 1:length(pics)
    subplot(2,3,index);
    imshow(pics{index});
end
   

% %Resize and paste pics into frame
figure
% %Maggie
[rows cols colors] = size(maggie);
maggie = maggie(round(linspace(1,rows,rows/2)),round(linspace(1,cols,cols/2)),:);
frame([51:100],[51:100],:) = maggie;
% 
% %Lisa
[rows cols colors] = size(lisa);
lisa = lisa(round(linspace(1,rows,3*rows/4)),round(linspace(1,cols,3*cols/4)),:);
frame([51:125],[251:325],:) = lisa;
% 
% %Marge
[rows cols colors] = size(marge)
marge = marge(round(linspace(1,rows,rows)),round(linspace(1,cols,cols)),:);
[rows cols colors] = size(marge)
frame([151:250],[126:225],:) = marge;
% % % 
% %Bart
[rows cols colors] = size(bart)
bart = bart(round(linspace(1,rows,5*rows/4)),round(linspace(1,cols,5*cols/4)),:);
[rows cols colors] = size(bart)
frame([126:250],[351:475],:) = bart;
% % 
%Homer
[rows cols colors] = size(homer)
homer = homer(round(linspace(1,rows,3*rows/2)),round(linspace(1,cols,3*cols/2)),:);
[rows cols colors] = size(homer)
frame([301:450],[51:200],:) = homer;
% 
% %Family
[rows cols colors] = size(family)
family = family(round(linspace(1,rows,2*rows)),round(linspace(1,cols,2*cols)),:);
[rows cols colors] = size(family)
frame([276:475],[276:475],:) = family;
% % 
imshow(frame);