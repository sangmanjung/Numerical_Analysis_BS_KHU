%% Problem 4.16
clc, clear

% Use the base parameters and the function f.
f=@(x) 25*x^3-6*x^2+7*x-88;
h=0.25; x=[2-h 2 2+h];

% True value of the derivative of f
deriv1=@(x) 25*3*x^2-6*2*x+7;
deriv1(2);

% Finite difference schemes
% Forward scheme
Df1=(f(x(3))-f(x(2)))/h;
% Backward scheme
Df2=(f(x(2))-f(x(1)))/h;
% Centered scheme
Df3=(f(x(3))-f(x(1)))/(2*h);

% All of them
DFs=[Df1 Df2 Df3]';

% Compare the results
Error_t=(deriv1(2)-DFs)/deriv1(2)