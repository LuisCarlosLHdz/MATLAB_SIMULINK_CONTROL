clear
clc
%-------------------------
M1 = csvread('Muestreoh.csv'); %h
%---------------------------
%plot(y1,M1(:,2),y1,M1(:,3),y1,M1(:,4),y1,M1(:,5),y1,M1(:,6),y1,M1(:,7),y1,M1(:,8),y1,M1(:,9),y1,M1(:,10),y1,M1(:,11),y1,M1(:,12))
x1 = M1(:,1);
y1 = sgolayfilt(x1,1,11);
x2 = M1(:,2);
y2 = sgolayfilt(x2,1,11);
x3 = M1(:,3);
y3 = sgolayfilt(x3,1,11);
x4 = M1(:,4);
y4 = sgolayfilt(x4,1,11);
x5 = M1(:,5);
y5 = sgolayfilt(x5,1,11);
x6 = M1(:,6);
y6 = sgolayfilt(x6,1,11);
x7 = M1(:,7);
y7 = sgolayfilt(x7,1,11);
x8 = M1(:,8);
y8 = sgolayfilt(x8,1,21);
x9 = M1(:,9);
y9 = sgolayfilt(x9,1,21);
x10 = M1(:,10);
y10 = sgolayfilt(x10,1,21);
x11 = M1(:,11);
y11 = sgolayfilt(x11,1,21);
y1 = linspace(0,3.63,1413);
plot(y1,y2,y1,y3,y1,y4,y1,y5,y1,y6,y1,y7,y1,y8,y1,y9,y1,y10,y1,y11)
legend('430\mus','500\mus','600\mus','700\mus','800\mus','900\mus','1ms','2ms','3ms','4ms')