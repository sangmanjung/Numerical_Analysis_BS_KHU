%% Problem 1.18
clc, clear

% Initial value
T1(1)=37; T2(1)=37; Ta_new(1)=20; Ta=10; k=0.12;
% Step size
dt=0.5; t=0:dt:5;

% Method 1
%  for i=1:length(t)-1;
%      T1(i+1)=T1(i)-k*(T1(i)-Ta)*dt;
%      T2(i+1)=T2(i)-k*(T2(i)-20+2*t(i))*dt;
%  end

% Method 2
for i=1:length(t)-1
    Ta_new(i+1)=20-2*t(i);
    T1(i+1)=T1(i)-k*(T1(i)-Ta)*dt;
    T2(i+1)=T2(i)-k*(T2(i)-Ta_new(i))*dt;
end

% Plot
plot(t,T1,'r-')
hold on
plot(t,T2,'b--')