% Problem 22.14
clear all, clc

% parameters & solutions
t=[1960 2020]; y0=[610 22]; h=0.0625;
a=0.23; b=0.0133; c=0.4; d=0.0004;
[t y]=rk4sys(@dydtsys,t,y0,h,a,b,c,d);

% data table
td=1959:2006;
Md=[563 610 628 639 663 707 733 765 912 1042 1268 1295 1439 1493 1435 1467 1355 1282 1143 1001 1028 910 863 872 932 1038 1115 1192 1268 1335 1397 1216 1313 1590 1879 1770 2422 1163 500 699 750 850 900 1100 900 750 540 450];
Wd=[20 22 22 23 20 26 28 26 22 22 17 18 20 23 24 31 41 44 34 40 43 50 30 14 23 24 22 20 16 12 12 15 12 12 13 17 16 22 24 14 25 29 19 17 19 29 30 30];
Data=[Md' Wd'];

% (a) the sum of the squares of the residuals
[t2 y2]=rk4sys(@dydtsys,[1959 2006],[563 20],1,a,b,c,d);
residuals=sum((Data-y2).^2)

% (a) graphs
subplot(3,1,1);plot(t,y(:,1),td,Md,'o')
legend('LVE','DATA')
title('a) Moose time plot'),grid
subplot(3,1,2);plot(t,y(:,2),td,Wd,'o')
legend('LVE','DATA')
title('b) Wolves time plot'),grid

% (b) phase-plane plot
subplot(3,1,3);plot(y(:,1),y(:,2))
title('c) Phase plane plot'),grid
xlabel('Moose'),ylabel('Wolves');