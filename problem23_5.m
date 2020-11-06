% Problem 23.5
clear all, clc

% parameters 
global h
h=0.1; % fixed
a=100000; b=99999;
t=0:h:2; y_ex(1)=0; y_im(1)=0;

% explicit & implicit Euler 
for i=1:length(t)-1
    y_im(i+1)=(y_im(i)+b*h*exp(-t(i+1)))/(1+a*h);
    y_ex(i+1)=y_ex(i)+(-a*y_ex(i)+b*exp(-t(i)))*h;
end

% stability for explicit Euler
amplication_factor_now=abs(1+a*h)
modified_h=0.00001;

% using the modified step size
y_mex(1)=0;
for i=1:length(t)-1
    y_mex(i+1)=y_mex(i)+(-a*y_mex(i)+b*exp(-t(i)))*modified_h;
end

plot(t,y_im,'r-o',t,y_mex,'b-*'); grid
axis([0 2 0 1.2])
title('Comparison between explicit(modified step size) and implicit')
xlabel('Time'); ylabel('Solutions for each schemes')
legend('implicit','explicit')
