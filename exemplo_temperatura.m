% Aula 07 -  Ajuste de curva
% JESUS, ACFS

%======================================
% Dados de entrada
%======================================
% Temperatura
T = [-20:20:120];

% Viscosidade
mu = [4 0.38 0.095 0.032 0.015 0.0078 0.0045 0.0032];

% S.I.
TK = T + 273;

%======================================
% Determinando o polinômio 
%====================================== 
p = polyfit(TK,log(mu),2)

%====================================== 
% Grafico da solução
%====================================== 
Tplot = 273 + [-20:120];
muplot = exp(p(1)*Tplot.^2 + p(2)*Tplot + p(3));

semilogy(TK,mu,'o',Tplot,muplot)
xlabel('Temperatura (K)');
ylabel(' Viscosidade mu (N* s/m^2)  ');
%title(' Viscosidade em funcao da temperatura');