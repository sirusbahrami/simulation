% Script
clear all
clc

% Parameters
A     = 0.05;
m     = 0.5;
cp    = 449;
alpha = 15;
Tumg  = 20;
Tsoll = 100;
Tdiff = 10;
P     = 0;
PB    = 1000;
t     = 5*60;

% Simulate oven model
Simulation = sim('buegeleisen',t);

% Extract the required data
Temp = Simulation.TempStruct.signals.values;
Zeit = Simulation.TempStruct.time;

% Plotting data
fignum = 0;
fignum = figure(fignum+1);
plot(Zeit/60,Temp,'b-')
title("Temperaturverlauf")
xlabel("Zeit in Minuten")
ylim([0 110])
ylabel("Temperatur in °C")
legend("T(t)")
grid
