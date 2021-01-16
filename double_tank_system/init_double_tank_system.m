%Script
clear all
close all
clc

%Systemparameters in SI units
Ar = 0.1;   % cross section of pipe
A1 = 1;     % cross section of first tank
A2 = 1;     % cross section of second tank
g  = 9.81;
t  = 10;

%Initial levels in Meters
H1 = 10;
H2 = 0;

%Simulation
simulation = sim('double_tank_system.slx',t);

%Plotting
figure(1)
plot(simulation.Levels.time,simulation.Levels.signals.values(:,1),'LineWidth',2)
hold all
plot(simulation.Levels.time,simulation.Levels.signals.values(:,2),'LineWidth',2)
title('Double tank system')
xlabel('Time in sec')
ylabel('Level in Meters')
legend('Level h_1(t)','Level h_2(t)')
grid