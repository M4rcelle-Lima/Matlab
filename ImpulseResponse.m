clear all
clc
close all

numG = 0.8
denG = [1 3 12]
sys = tf(numG,denG)


impulse(sys)
grid on



