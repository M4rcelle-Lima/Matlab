%Exercício 5.11

clear all
clc
close all

A = [-20 -100; 25 -65.5];
B = [100;0];
C = [0 1];
D = 0;

sys = ss(A,B,C,D); %cria o espaço de estado 
                  %sys representa o modelo espaço estado contínuo no tempo
                  
