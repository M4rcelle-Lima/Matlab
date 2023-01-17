clear all
close all
clc


numG = 0.8
denG = [1 3 12]
sys = tf(numG, denG)
t = 0:0.01:5;
u = ones(size(t))
lsim = (sys,u,t)
[y,t] = lsim(sys,u,t)
plot(t,y)
grid on
xlabel('Tempo [s]')
ylabel('Saída')
