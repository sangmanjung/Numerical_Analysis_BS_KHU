   % Problem 23.10
clear all, clc

% parameters
L=0.6; g=9.81;
nonlinear=@(t,v) [-g/L*sin(v(2));v(1)];
linear=@(t,v) [-g/L*v(2);v(1)];

[tn8 thetan8]=ode45(nonlinear,[0 20],[0 pi/8]);
[tl8 thetal8]=ode45(linear,[0 20],[0 pi/9]);
[tn2 thetan2]=ode45(nonlinear,[0 20],[0 pi/2]);
[tl2 thetal2]=ode45(linear,[0 20],[0 pi/2]);

subplot(2,1,1)
plot(tn8,thetan8(:,1),tl8,thetal8(:,1),'--');grid
legend('Nonlinear','Linear')
title('(a) Theta=pi/8');
xlabel('Time (t)');ylabel('Angle (theta)')
subplot(2,1,2)
plot(tn2,thetan2(:,1),tl2,thetal2(:,1),'--');grid
legend('Nonlinear','Linear');
title('(b) Theta=pi/2');
xlabel('Time (t)');ylabel('Angle (theta)')

