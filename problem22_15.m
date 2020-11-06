% Problem 22.15
clear all, clc
close all
% parameters
% Information for damping coefficient c.
% c(1):underdamped
% c(2):critically damped
% c(3):overdamped
m=20; k=20; c=[5 40 200];
h=0.25; tspan=[0 15]; initial=[0 1];

for i=1:length(c)
    dampode=@(t,x) [-c(i)/m*x(1)-k/m*x(2);x(1)];
    [t x]=ode45(dampode,tspan,initial);
    plot(t,x(:,2)); grid
    hold on
    xlabel('Times (s)'); ylabel('Displacement (x)');
end
legend('c=5','c=40','c=200')
hold off