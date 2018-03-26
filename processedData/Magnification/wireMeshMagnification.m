%% Magnification:
close all; clc; clear all;

imagefile = 'C:\Users\Adam\Documents\My Homework\PHYS 408\phys408FourierOptics\processedData\Magnification\images\snap-unknown-20180313-131305-1.jpeg';
savefile_ = 'snap-unknown-20180313-131305-1_data1';
%line = 255
option = 'hor';
line_measurement = 158; 
line_spacing = 72;

[x_ref ,y_ref] = DiffractionData(imagefile, savefile_, line_spacing, option)
[x_measure ,y_measure] = DiffractionData(imagefile, savefile_, line_measurement, option)

figure(1)
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');
set(0,'defaulttextInterpreter','latex');

plot(x_ref,y_ref,'b-','linewidth',1.5)
hold on 
plot(x_measure,y_measure,'r-','linewidth',1.5)
legend('Reference Line Spacing (Pixel Row 72)','Image Spacing (Pixel Row 158)','Location','Northeast')
xlabel('Pixel Number')
ylabel('Pixel Intensity')
title('Sliced Pixel Intensity')
hold off