%% Inicialización
clc
clear
close all

%% Parametros modelo
m1= 250; % masa 1 en kg
m2=30;  % masa 2 en kg
k1=1.6e4;  % constante elasticidad 1 en N/m
k2=1.6e5;   % constante elasticidad 2 en N/m
b=980;      % fricción N-s/m

%% SSR

A=[0        1    0       0;
   -k1/m1 -b/m1 k1/m1 b/m1;  
     0     0     0       1;
   k1/m2 b/m2 -(k1+k2)/m2 -b/m2;
   ];
B=[0 0 0 k2/m2]';
C=[1 0 -1 0;
   0 1 0 -1];
D=[0 0]';
%% State space model
sys = ss(A,B,C,D);
%% Entrada U(t)
t = linspace(0,15,1000);
u = 0.02*normpdf(t,5,0.5);
%% Modelo grafica
[y,t]=lsim(sys,u,t);
plot(t,y);
grid
xlabel("Tiempo, segundos",...
    'FontSize',16,...
    'FontWeight','bold',...
    'Interpreter','latex');
ylabel("Salida, y",...
    'FontSize',16,...
    'FontWeight','bold',...
    'Interpreter','latex');


