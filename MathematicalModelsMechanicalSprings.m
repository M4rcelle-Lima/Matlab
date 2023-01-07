clear all
clc
close all

dados = load('dados.csv');

loadForce = dados(:,1);

defSpring1 = dados(:,2);

defSpring2 = dados(:,3);

defTest = linspace(-8,8, 100); % -8:0.1:8

P1 = polyfit(defSpring1,loadForce,3);
P2 = polyfit(defSpring2,loadForce,3);

loadForceSim1 = polyval(P1,defTest);
loadForceSim2 = polyval(P2,defTest);

figure(1)
plot(defTest,loadForceSim1,'linewidth',2)
hold on
plot(defSpring1,loadForce,'o','markersize',10)
hold off
xlabel('Spring deflection #1 [mm]')
ylabel('Load force [N]')

legend('Simulated','Real')

figure(2)
plot(defTest,loadForceSim2,'linewidth',2)
hold on
plot(defSpring2,loadForce,'o','markersize',10)
hold off
xlabel('Spring deflection #2 [mm]')
ylabel('Load force [N]')

legend('Simulated','Real')

% figure(1)
% plot(loadForce)
% figure(2)
% plot(defSpring1)
% hold on
% plot(defSpring2)

