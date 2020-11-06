clc,clf,clear
g=9.81; theta0=50*pi/180; v0=5; Cr=0.8; k=0; c=0;
t(1)=0;x=0;y=0;
plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
axis([0 7 0 0.8])
M(1)=getframe;
dt=1/128;
for j = 2:500
t(j)=t(j-1)+dt;
x=v0*cos(theta0)*t(j) % remove the semicolon
y=Cr^k*v0*sin(theta0)*(t(j)-c)-0.5*g*(t(j)-c)^2 % remove the semicolon
if y <= 0
    c=t(j); % -> y=0
    k=k+1; % -> restrict the height of the ball after y=0
end
plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
axis([0 7 0 0.8])
M(j)=getframe;
if 7 <= x & y<=0, break, end 
% Position of the ball (x,y) :
% (x,y)=(7,0.21) -> play
% (x,y)=(7,0.0000...1) -> play
% (x,y)=(7,0) -> stop
% (x,y)=(7,negative) -> stop
end
pause
movie(M,1)