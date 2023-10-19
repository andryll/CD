% Root Locus - Utiliza a função de transferência em malha aberta para calcular os polos em malha fechada.
% 2ª Regra - Os zeros atraem os polos

%% RLocus
clc
clear all
close all

%%
sys = tf([1 0], [1 -2], 0.1)
rlocus(sys)

%%
sys2 = tf([1 2 4], [ 1 3 -2 2], 0.1)
rlocus(sys2)
