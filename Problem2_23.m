%% Problem 2.23
clc, clear

% theta
theta = 0:pi/32:pi*8;
% formula
r = exp(sin(theta))-2*cos(4*theta)-sin((2*theta-pi)/24).^5;
% plot for polar coordinate
polar(theta,r,'r--')