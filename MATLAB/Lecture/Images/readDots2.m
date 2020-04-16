img = imread("dotPattern.png");

mask = img(:,:,1)>128 & img(:,:,2)<128 &img(:,:,3)<128;


imshow(img(mask))
