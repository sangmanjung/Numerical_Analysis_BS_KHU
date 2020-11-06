%% Problem 3.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function f=Mac_Sine(x,n)
% % x : input value, n : the number of terms of series.
% format long
% for i = 1:n
%     if  i == 1
%         f(i)=x;
%     elseif mod(i,2) == 0
%         f(i) = f(i-1) - (x^(2*i-1)/factorial(2*i-1));
%     elseif mod(i,2) == 1
%         f(i) = f(i-1) + (x^(2*i-1)/factorial(2*i-1));
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc, clear

x=0.9;
truevalue=sin(x);
approximation=Mac_Sine(x,8);
PercentError=100*(truevalue-approximation)/truevalue