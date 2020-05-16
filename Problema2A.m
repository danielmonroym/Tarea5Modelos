%% Inicialización
clc
clear
close all

%% Interprete LaTeX
 set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
   set(groot, 'defaultLegendInterpreter','latex');
    %% Parametros modelo

    k1=3; 
    k2=1.5;  
    k3=2.3;
    k4=1.8;
    
  %% Se modela linealmente
  [A,B,C,D]=linmod('untitled');
   sys = ss(A,B,C,D);
   G=tf(sys);
   step(sys);
   grid
  