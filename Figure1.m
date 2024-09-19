%Read data
pic_color1=imread('Pic1.bmp');
pic_color2=imread('Pic2(10x).bmp');
pic_color3=imread('Pic3(40x).bmp');

pic1=0.2989*pic_color1(:,:,1)+0.5870*pic_color1(:,:,2)+0.1140*pic_color1(:,:,3); 
pic2=0.2989*pic_color2(:,:,1)+0.5870*pic_color2(:,:,2)+0.1140*pic_color2(:,:,3); 
pic3=0.2989*pic_color3(:,:,1)+0.5870*pic_color3(:,:,2)+0.1140*pic_color3(:,:,3); 

micronsPerPixel = 3.6/4;

pixelSize = 3.6;
imagesize = (1280*1024);

add1 = 4*(0.37);
add2 = 10*(0.37);
add3 = 40*(0.37);


ImageWithScaleBar(pic1, 500, add1, 3.6, [1, 1, 1]);
title('USAF Resolution 4x', 'FontSize', 14)
%{
[xpos4x, ypos4x] = ginput(2);
deltax = sqrt((xpos4x(1)-xpos4x(2))^2 + (ypos4x(1) -ypos4x(2))^2);
d4x = 1/(deltax/1000);
%}
ImageWithScaleBar(pic2, 200, add2, pixelSize, [1, 1, 1]);
title('USAF Resolution 10x', 'FontSize', 14)
%{
[xpos4x, ypos4x] = ginput(2);
deltax = sqrt((xpos4x(1)-xpos4x(2))^2 + (ypos4x(1) -ypos4x(2))^2);
d4x = 1/(deltax/1000);
%}
ImageWithScaleBar(pic3, 75, add3, pixelSize, [1, 1, 1]);
title('USAF Resolution 40x', 'FontSize', 14)
%{
[xpos4x, ypos4x] = ginput(2);
deltax = sqrt((xpos4x(1)-xpos4x(2))^2 + (ypos4x(1) -ypos4x(2))^2);
d4x = 1/(deltax/1000);
%}