% Problem 23.8
clear all, clc

% parameters
h=0.03125; t=0:h:5; %y(1)=0.08;
tspan=[0 5];
% (a) Analytically
y_exact=@(t) t.^2+2*t/5+2/25;

% (b) 4th-order RK method
dydt=@(t,y) 5*(y-t^2);
[t1 y1] = rk4sys(dydt,tspan,0.08,h);
[t2 y2] = ode45(dydt,tspan,0.08,h);
[t3 y3] = ode23s(dydt,tspan,0.08,h);
[t4 y4] = ode23tb(dydt,tspan,0.08,h);

% Graph
figure(1)
set(gcf, 'Position',  [400, 400, 800, 200])
plot(t,y_exact(t),'b')
axis([0 6 -30 30])
grid on
hold on
plot(t1,y1,'g')
plot(t2,y2,'r')
plot(t3,y3,'m')
plot(t4,y4,'k')
legend('exact','RK4','ode45','ode23s','ode23tb')


