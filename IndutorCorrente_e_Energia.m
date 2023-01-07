clear all
close all
clc
%----------

R = 2;
L = 0.08;

t=linspace(0,1,1000);
i = 0;

for i = 1:length(t)
LH(i) = 0.5.*(1-exp(-50.*t(i)));
En(i) = (0.5).*(L.*(LH(i)).^2);
end

figure(1)
plot(t,LH,'linewidth',1,'color','r')
set(gca, 'linewidth',1,'fontsize',14)
xlabel('Tempo [s]')
ylabel('Corrente [A]')
title('Corrente no Indutor')
grid on

figure(2)
plot(t,En,'linewidth',1,'color','b')
set(gca, 'linewidth',1,'fontsize',14)
xlabel('Tempo [s]')
ylabel('Energia [J]')
title('Energia no Indutor')
grid on