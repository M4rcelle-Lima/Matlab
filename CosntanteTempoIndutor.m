il0 = 10;
t = linspace(0,5,1000);
tau = [0.1 0.5 1];

for i = 1:length(tau)
    il = il0*exp(-t/tau(i));
    plot(t,il);
    hold all
end

xlabel_h = xlabel('Tempo [s]');
ylabel_h = ylabel('i_{L}(t) [A]');
legend_h = legend('\tau = 0.1s','\tau = 0.5s','\tau = 1s');
title_h = title('Curva de decaimento de corrente para diferentes constantes de tempo');