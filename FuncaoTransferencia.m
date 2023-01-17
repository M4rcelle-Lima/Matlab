clear all
close all
clc

numG = 0.8
denG = [1 3 12]
sys = tf(numG,denG)
step(sys)
grid on
legend()