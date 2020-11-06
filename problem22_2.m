% Problem 22.2
clear all, clc
close all
% step size & interval
h=0.25; x=0:h:1;

% initial value
y1(1)=1; y2(1)=y1(1); y3(1)=y1(1);

% (a) Analytically
y_exact=@(x) x.^4+x.^3+9/4*x.^2+x+1;

% (b) Using Euler's method
for i=1:length(x)-1
    y1(i+1)=y1(i)+h*((1+4*x(i))*sqrt(y1(i)));
end

% (c) Heun's method
for i=1:length(x)-1
    y0=y2(i)+h*(1+4*x(i))*sqrt(y2(i));
    y2(i+1)=y2(i)+h/2*((1+4*x(i))*sqrt(y2(i))+(1+4*x(i+1))*sqrt(y0));
end

% (d) Using Ralston's method
for i=1:length(x)-1
    k1=(1+4*x(i))*sqrt(y3(i));
    k2=(1+4*(x(i)+3/4*h))*sqrt(y3(i)+3/4*k1*h);
    y3(i+1)=y3(i)+h*(k1/3+2*k2/3);
end

% (e) Using the 4th-order RK method
% we need the M-files : dydx, rk4sys
[t y4] = rk4sys(@dydx,[0 1],1,h);

% Graphs
subplot(1,2,1)
plot(x,y_exact(x),'k-h')
hold on
plot(x,y1,'r-*')
plot(x,y2,'b-s')
plot(x,y3,'g-o')
plot(x,y4,'m-p')
grid on
xlabel('x')
ylabel('y(x)')
legend('Exact','Euler','Heun',...
    'Ralston','RK','location','northwest')
hold off

subplot(1,2,2)
plot(x,y_exact(x),'k-h')
hold on
plot(x,y1,'r-*')
plot(x,y2,'b-s')
plot(x,y3,'g-o')
plot(x,y4,'m-p')
grid on
xlabel('x')
ylabel('y(x)')
xlim([0.49 0.51])
ylim([2.215 2.255])
hold off
