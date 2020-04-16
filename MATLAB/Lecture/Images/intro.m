clear
clc
close all

% Let's start with one pixel
% figure
% img(1,1,1) = 255;     %Red
% img(1,1,2) = 0;   %Green
% img(1,1,3) = 0;   %Blue
% % 
% image( uint8(img) )
% imshow( uint8(img) )
% axis off; axis equal

%======================================================

% %A little bit bigger
% figure
% img(1:3,1:3,1) = [255 0 0
%                   255 255 0
%                   255 128 0];
% 
% img(1:3,1:3,2) = [0 255 0
%                   255 0 255
%                   255 128 0];              
% 
% img(1:3,1:3,3) = [0 0 255
%                   0 255 255
%                   255 128 0]; 

% img(1,1,1) = 255
% img(1,2,1) = 0
% img(1,3,1) = 0
% img(1,1:3,1) = [255 0 0];
% img(1,1:3,2) = [0 255 0];
% img(1,1:3,3) = [0 0 255];
% 
% img(2,1:3,1) = [255 255 0];
% img(2,1:3,2) = [255 0 255];
% img(2,1:3,3) = [0 255 255];
% % 
% img(3,1:3,1) = [255 128 0];
% img(3,1:3,2) = [255 128 0];
% img(3,1:3,3) = [255 128 0];
% % 
% image(uint8(img))
% img
% % imshow(uint8(img))
% axis off; axis equal

%======================================================

%Even bigger
figure
img(1:4,1:12,1) = [255 255 255 255    0 0 0 0           0 0 0 0
                   255 255 255 255    0 0 0 0           0 0 0 0
                   255 255 255 255    0 0 0 0           0 0 0 0
                   255 255 255 255    0 0 0 0           0 0 0 0];
img(1:4,1:12,2) = [0 0 0 0          255 255 255 255     0 0 0 0
                   0 0 0 0          255 255 255 255     0 0 0 0 
                   0 0 0 0          255 255 255 255     0 0 0 0
                   0 0 0 0          255 255 255 255     0 0 0 0];
img(1:4,1:12,3) = [0 0 0 0          0 0 0 0            255 255 255 255
                   0 0 0 0          0 0 0 0            255 255 255 255
                   0 0 0 0          0 0 0 0            255 255 255 255
                   0 0 0 0          0 0 0 0            255 255 255 255];
image(img)
% %  %Pixel play                        
z = [0 0
       0 0];
% %    
o = [255 255
       255 255];
% %   
figure
% img(2:3, 2:3, 1) = z;
% image(img)

% img(2:3,2:3,2)=o;
% image(img)

% img(1:2,11:12,1)=o;
% image(img)

img(1:2,11:12,2)=o;
image(img)
% % 
% image(uint8(img))
% % imshow(uint8(img))
% axis off; axis equal
% 
% % %Color selector
% figure
% red = 0;
% green = 0;
% blue= 0;
% 
% img(:,:,1) = red;
% img(:,:,2) = green;
% img(:,:,3) = blue;
% 
% while true
%     [x y] = ginput(1);
% 
%     if x<85
%         red = round(256-y);
%         img(:,:,1) = (256-y);
%     elseif x>85 & x<170
%         green = round(256-y);
%         img(:,:,2) =(256-y);
%     else
%         blue = round(256-y);
%         img(:,:,3) = (256-y);
%     end
% 
%     image(1:256,1:256,uint8(img))
%     % imshow(img)
%     axis off; axis( [1 256 1 256])
%     text(-30,1,'255')
%     text(-30,256,'0')
%     tag = sprintf('Red = %d                          Green = %d                          Blue = %d',red,green,blue);
%     title(tag) 
% end

% Reading images
% img = imread('color_strip.jpg','jpg');
% figure
% image(img);
% img
% axis off; axis equal
%  
% [rows, columns, colors] = size(img)
% [rows, columns] = size(img)

% Flip Vertical
% figure
% image(  img(end:-1:1,:, :)  )
% axis off; axis equal

%Make Hoirzontal 
%     Matlab does not like to operate on 3D arrays. This won't work
%     figure
%     himg = img'
%     image(  himg  )
%     axis off; axis equal

% %     Must do it this way
%     figure
%     himg(:,:,1) =img(:,:,1)'; 
%     himg(:,:,2) =img(:,:,2)'; 
%     himg(:,:,3) =img(:,:,3)'; 
%     image(  himg  )
%     axis off; axis equal
% % 
% % Flip Horizontal
% figure
% image(himg(:,end:-1:1, :))
% axis off; axis equal



