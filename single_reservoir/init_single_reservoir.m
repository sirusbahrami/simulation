%Script
clear all
close all
clc

%Systemparameters in SI units
Aout = 0.1; 
A1   = 1;
g    = 9.81;
t    = 20;

%Initial level
H1 = 10; % Meter

%Simulation durchführen
simulation = sim('single_reservoir.slx',t);

%Plotting data
figure(1)
plot(simulation.Level.time,simulation.Level.signals.values,'LineWidth',2)
title('Single reservoir')
xlabel('Time in sec')
ylabel('Level in Meter')
grid