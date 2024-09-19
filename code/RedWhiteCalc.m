mag = 0.37*10;

pic1 = imread("BloodSmear10x_1.bmp");
add3 = 40*(0.37);
pixelSize = 3.6;

%Figure 11

imshow(pic1)
axis on
axis square
FOV=pixelSize*size(pic1)/(add3);
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
title('Greyscale of Blood Smear 10x', 'FontSize', 12)



%Figure 12
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
ImageWithScaleBar(white,100,mag,3.6,[1, 1, 1]);
title('Green Color Channel Binarized', 'FontSize', 12)
wcell = (white<150);
ImageWithScaleBar(wcell,100,mag,3.6,[1, 1, 1]);
title('WBC Only Binarized', 'FontSize', 12)
fprintf('%d\n', sum(wcell(:)));
fprintf('%d W1\n',round((sum(wcell(:)))/pix10));

%Figure 13
a = squeeze(pic1(:,:,2));
b=(a<150);
ImageWithScaleBar(BW,100,mag,3.6,[1, 1, 1]);
title('RBC Only Binarized', 'FontSize', 12)
sum_rbc = sum(b(:));
fprintf('%d \n', sum_rbc);
fprintf('%d \n', pix10);
fprintf('%d R1\n',round(sum_rbc/ pix10))

%Rest of Images
pic1 = imread("BloodSmear10x_2.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d\n', sum(wcell(:)));
fprintf('%d W2\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r2\n',round(sum_rbc/pix10))


pic1 = imread("BloodSmear10x_3.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d\n', sum(wcell(:)));
fprintf('t%d w3\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r3\n',round((sum_rbc/pix10)))


pic1 = imread("BloodSmear10x_4.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d\n', sum(wcell(:)));
fprintf('%d w4\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r4\n',round((sum_rbc)/pix10))


pic1 = imread("BloodSmear10x_5.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d w5\n',round((sum(wcell(:)))/pix10));

a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r5\n',round(sum_rbc/pix10))


pic1 = imread("BloodSmear10x_6.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d w6\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r6\n',round(sum_rbc/pix10))


pic1 = imread("BloodSmear10x_7.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d w7\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r7\n',round((sum_rbc)/pix10))


pic1 = imread("BloodSmear10x_8.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d w8\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r8\n',round((sum_rbc)/pix10))


pic1 = imread("BloodSmear10x_9.bmp");
white = squeeze(pic1(:,:,1));
pix40 = size(white);
pix10 = pix40(2) / 16;
wcell = (white<170);
fprintf('%d w9\n',round((sum(wcell(:)))/pix10));
a = squeeze(pic1(:,:,2));
b=(a<150);
sum_rbc= (sum(b(:)));
fprintf('%d r9\n',round((sum_rbc)/pix10))
