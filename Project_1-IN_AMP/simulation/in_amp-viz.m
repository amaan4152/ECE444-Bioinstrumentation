%% Instrumentation Amplifier 
% Amaan Rahman
% ECE 444

clc; clear; close all; 

%% Data
FREQ = [1, 5, 100, 500, 1e3, 10e3, 25e3, 50e3, 500e3, 1e6];
IN = [24, 25, 21, 19, 26, 19, 23, 18, 41, 19] * 0.001;
OUT = [2.37, 2.33, 2.4, 2.3, 2.33, 2.20, 1.7, 1.21, 0.094, 0.042];

%% GAIN 
D_GAIN = 20*log10(OUT./IN);
f_i = 1:1e6;
D_i = interp1(FREQ, D_GAIN, f_i);
semilogx(f_i, D_i);
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Frequency Response');