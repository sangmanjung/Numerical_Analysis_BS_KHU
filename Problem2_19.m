%% Problem 2.19
clc, clear

% Initial value
v0=28; y0=0; g=9.81; x=0:5:80;
theta0=pi/12:pi/12:5*pi/12;
% Using built-in function
% lb=deg2rad(15); ub=deg2rad(75);
% theta0=lb:lb:ub;

% The trajectory model
y1=tan(theta0(1))*x-(g/(2*(v0^2)*cos(theta0(1))^2))*x.^2+y0;
y2=tan(theta0(2))*x-(g/(2*(v0^2)*cos(theta0(2))^2))*x.^2+y0;
y3=tan(theta0(3))*x-(g/(2*(v0^2)*cos(theta0(3))^2))*x.^2+y0;
y4=tan(theta0(4))*x-(g/(2*(v0^2)*cos(theta0(4))^2))*x.^2+y0;
y5=tan(theta0(5))*x-(g/(2*(v0^2)*cos(theta0(5))^2))*x.^2+y0;

y=[y1' y2' y3' y4' y5'];

% % Using 'for' loop
% y=zeros(length(theta0),length(x));
% for i=1:length(theta0)
%     for j=1:length(x)
%     y(i,j)=tan(theta0(i))*x(j)-(g/(2*(v0^2)*cos(theta0(i))^2))*x(j).^2+y0;
%     end
% end


% Plot
plot(x,y)
legend('\theta=15','\theta=30','\theta=45','\theta=60','\theta=75')
axis([0 80 0 40])