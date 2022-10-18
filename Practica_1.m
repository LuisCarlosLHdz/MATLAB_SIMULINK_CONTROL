clear
clc
%Elementos Pasivos 
R = 1e3;
C = 33e-6;
%Parametros Propuestos
Mp = 10; %Máxima sobreimpulso
tr = 0.1;  %Tiempo de subida
%Coeficientes del polinomio característico
P = (sqrt((log(Mp/100))^2))/(sqrt(((pi)^2) + ((log(Mp/100))^2))); %Relación de amortiguamiento
phi = acos(P);
Wn = (pi - phi)/(tr*(sqrt(1 - ((P)^2)))); %Frecuencia natural no amortiguada
Wd = Wn*(sqrt(1 - ((P)^2)));
tp = pi/Wd; %Tiempo pico
%---------------------------------------
c1 = ['P = ',num2str(P)];
disp(c1)
c2 = ['Wn = ',num2str(Wn)];
disp(c2)
%Cálculo de las ganancias del control PID
Kp = 0.74;
y1 = ['float Kp = ',num2str(Kp),';'];
disp(y1)
Kd = ((1 + Kp)/(2*P*Wn)) - (R*C);
y2 = ['float Kd = ',num2str(Kd),';'];
disp(y2)
Ki = ((Wn)^2)*(R*C + Kd);
y3 = ['float Ki = ',num2str(Ki),';'];
disp(y3)
h = (450e-6);
bi = Ki*h;
y4 = ['float bi = ',num2str(bi),';'];
disp(y4)
N = 2;          %N: rango 2-20
Tf = (Kd/Kp)/N;
ad = Tf/(Tf + h);
y5 = ['float ad = ',num2str(ad),';'];
disp(y5)
bd = Kd/(Tf + h);
y6 = ['float bd = ',num2str(bd),';'];
disp(y6)
Kw = 2;
TL = 1/Kw;
br = h/TL;
y7 = ['float br = ',num2str(br),';'];
disp(y7)