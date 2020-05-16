%% Inicialización
clc
clear
close all

%% Interprete LaTeX
 set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
   set(groot, 'defaultLegendInterpreter','latex');
   
  %% Se modela linealmente
  [A,B,C,D]=linmod('puntoc');
   sys = ss(A,B,C,D);
   G=tf(sys);
   step(sys);
   grid
  