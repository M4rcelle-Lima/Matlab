%modeling friction in mechanical systems

clear all
clc
close all

Fest = 10; % [N]
FC  = 7; % [N]
b = 70; % [Ns/m]
c = [0.001,0.002,0.005]; % [m/s]

N = 100;
dx = linspace(-0.05,0.05, N);

for i = 1:3
    for k = 1:N
        Fa(i,k)  = (FC + (Fest - FC)*exp(-abs(dx(k))/c(i)))*sign(dx(k))+b*dx(k);
    end
end

figure(1)

plot(dx,Fa)
