%Read data
pic_color1=imread('CheekCell1.bmp');
pic_color2=imread('CheekCell2(Darker).bmp');
pic_color3=imread('CheekCell3(Ortho).bmp');
pic_color4=imread('CheekCell4(Darkest).bmp');

pic1=0.2989*pic_color1(:,:,1)+0.5870*pic_color1(:,:,2)+0.1140*pic_color1(:,:,3); 
pic2=0.2989*pic_color2(:,:,1)+0.5870*pic_color2(:,:,2)+0.1140*pic_color2(:,:,3); 
pic3=0.2989*pic_color3(:,:,1)+0.5870*pic_color3(:,:,2)+0.1140*pic_color3(:,:,3); 
pic4=0.2989*pic_color3(:,:,1)+0.5870*pic_color4(:,:,2)+0.1140*pic_color4(:,:,3); 

micronsPerPixel = 3.6/4;

pixelSize = 3.6;
imagesize = (1280*1024);

add1 = 4*(0.37);
add2 = 10*(0.37);
add3 = 40*(0.37);


ImageWithScaleBar(pic1, 100, add2, pixelSize, [1, 1, 1]);
title('Brightfield Cheek Cells', 'FontSize', 14)
ImageWithScaleBar(pic2, 100, add2, pixelSize, [1, 1, 1]);
title('Phasecontrast Cheek Cells', 'FontSize', 14)
ImageWithScaleBar(pic3, 100, add2, pixelSize, [1, 1, 1]);
title('Orthogonal Cheek Cells', 'FontSize', 14)
ImageWithScaleBar(pic4, 100, add2, pixelSize, [1, 1, 1]);
title('Darkfield Cheek Cells', 'FontSize', 14)