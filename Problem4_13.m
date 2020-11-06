%% Problem 4.13

% [Note]
% In order to reduce this code,
% develop the M-file and use the built-in
% function 'diff' or 'for' loop
% or any methods you can consider.
clc, clear

% True value of f
true_f=@(x) 25*x^3-6*x^2+7*x-88;

% Derivative
deriv1=@(x) 25*3*x^2-6*2*x+7;
deriv2=@(x) 25*3*2*x-6*2;
deriv3=@(x) 25*3*2;

% Taylor series 0 through 3
approx_f0=@(x,a) true_f(a);
approx_f1=@(x,a) true_f(a)+deriv1(a)*(x-a);
approx_f2=@(x,a) true_f(a)+deriv1(a)*(x-a)...
    +1/2*deriv2(a)*(x-a)^2;
approx_f3=@(x,a) true_f(a)+deriv1(a)*(x-a)...
    +1/2*deriv2(a)*(x-a)^2+1/6*deriv3(a)*(x-a)^3;

% Approximation of f
approx_f0(3,1);
approx_f1(3,1);
approx_f2(3,1);
approx_f3(3,1);

approx=[approx_f0(3,1) approx_f1(3,1)...
    approx_f2(3,1) approx_f3(3,1)];

% Relative error
epsilon=100*(true_f(3)-approx)/true_f(3);
Relative_error=epsilon'

