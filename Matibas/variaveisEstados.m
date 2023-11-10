clc
clear all
close all

%%
syms S

A = [2 1; 0 4]
B = [0; 1]
C = [1 0]
D = 0

%calcular os autovalores de uma matriz
eig(A)

%espaço de estados
sys = ss(A, B, C, D)


step(sys)
%impulse(sys)