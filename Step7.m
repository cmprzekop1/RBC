%Read data
pic_color1=imread('RBC40x.bmp');
%{
pic_color2=imread('CheekCell2(Darker).bmp');
pic_color3=imread('CheekCell3(Ortho).bmp');
pic_color4=imread('CheekCell4(Darkest).bmp');
%}

red=squeeze(pic_color1(:,:,1));
green=squeeze(pic_color1(:,:,2));
blue=squeeze(pic_color1(:,:,3));

%{
pic1=0.2989*pic_color1(:,:,1)+0.5870*pic_color1(:,:,2)+0.1140*pic_color1(:,:,3); 
pic2=0.2989*pic_color2(:,:,1)+0.5870*pic_color2(:,:,2)+0.1140*pic_color2(:,:,3); 
pic3=0.2989*pic_color3(:,:,1)+0.5870*pic_color3(:,:,2)+0.1140*pic_color3(:,:,3); 
pic4=0.2989*pic_color3(:,:,1)+0.5870*pic_color4(:,:,2)+0.1140*pic_color4(:,:,3); 
%}
micronsPerPixel = 3.6/4;

pixelSize = 3.6;
imagesize = (1280*1024);

add1 = 4*(0.37);
add2 = 10*(0.37);
add3 = 40*(0.37);


%Figure 8

figure(1);
title('Red, Green, and Blue Color Channels', 'FontSize', 14)
subplot(1,3,1)
imshow(red)
axis on
axis square
FOV=pixelSize*size(red)/(add3);
micronsPerPixel = 3.6/4;
x_range=[0:micronsPerPixel:FOV(2)];
y_range=[0:micronsPerPixel:FOV(1)];
imagesc(x_range, y_range,red);
colormap('gray')
x=[10, 10+100];
y=round([y_range(50), y_range(50)]);
line(x,y,'LineWidth',2,'Color',[1, 1, 1]);
text(x(1),round(y_range(100)),[num2str(100), '\mum'],'FontWeight','bold','FontSize', 15,'Color',[1, 1, 1]);
xlabel('microns');
ylabel('microns');


subplot(1,3,2)
imshow(green)
axis on
axis square
FOV=pixelSize*size(green)/(add3);
micronsPerPixel = 3.6/4;
x_range=[0:micronsPerPixel:FOV(2)];
y_range=[0:micronsPerPixel:FOV(1)];
imagesc(x_range, y_range,green);
colormap('gray')
x=[10, 10+100];
y=round([y_range(50), y_range(50)]);
line(x,y,'LineWidth',2,'Color',[1, 1, 1]);
text(x(1),round(y_range(100)),[num2str(100), '\mum'],'FontWeight','bold','FontSize', 15,'Color',[1, 1, 1]);
xlabel('microns');
ylabel('microns');

subplot(1,3,3)
imshow(blue)
axis on
axis square
FOV=pixelSize*size(blue)/(add3);
micronsPerPixel = 3.6/4;
x_range=[0:micronsPerPixel:FOV(2)];
y_range=[0:micronsPerPixel:FOV(1)];
imagesc(x_range, y_range,blue);
colormap('gray')
x=[10, 10+100];
y=round([y_range(50), y_range(50)]);
line(x,y,'LineWidth',2,'Color',[1, 1, 1]);
text(x(1),round(y_range(100)),[num2str(100), '\mum'],'FontWeight','bold','FontSize', 15,'Color',[1, 1, 1]);
xlabel('microns');
ylabel('microns');



%Binary Figure 10
threshold=graythresh(green);
BW = green>130
ImageWithScaleBar(BW, 500, add1, 3.6, [1, 1, 1]);
title('Green Color Channel 40x', 'FontSize', 14)
s=sum(BW(:));

