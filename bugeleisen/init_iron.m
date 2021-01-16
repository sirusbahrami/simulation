% Script
clear all
clc

% Parameters
A     = 0.05; %iron area
m     = 0.5;  % mass
cp    = 449;  % cp of iron
alpha = 15;   % alpha of iron
Tamb  = 20;   % T ambient 20°Celsius
Tdes  = 100;  % T desired 100° Celsius
Tdiff = 10;   % dynamics of iron
P     = 0;    % Power
PB    = 1000; % Power
t     = 5*60; % Time (5*60 seconds = 300 seconds)

% Simulate oven model
Simulation = sim('iron',t);

% Extract the required data
Temp = Simulation.TempStruct.signals.values;
Zeit = Simulation.TempStruct.time;

% Plotting data
fignum = 0;
fignum = figure(fignum+1);
plot(Zeit/60,Temp,'b-')
title("Temperature profile")
xlabel("Time in Minutes")
ylim([0 110])
ylabel("Temperature in °C")
legend("T(t)")
grid
