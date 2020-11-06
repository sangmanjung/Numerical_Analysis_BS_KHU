function [x,T]=bvshoot(func,tspan,bc,tout,varargin)
% bvshoot: shooting method boundary value ODEs
% [x,T]=bvshoot(func,tspan,bc,tout,p1,p2,...):
% uses the shooting method to solve a linear 2 nd -order ODE
% input:
% func = name of the M-file that evaluates the ODEs
% tspan = [ti , tf]; initial and final times
% bc = boundary values of Dirichlet conditions
% tout = desired times for output
% p1,p2,... = additional parameters used by func
% output:
% x = vector of independent variable
% T = vector of solution for dependent variables
if nargin<3,error('at least 3 input arguments required'),end
if nargin<4|isempty(tout),tout=tspan;end
%first shot
za1=1;Ta=bc(:,1);Tb=bc(:,2);
[x1,T1]=ode45(func,tspan,[Ta za1]);
Tb1=T1(length(T1));
%second shot
za2=za1*1.1;
[x2,T2]=ode45(func,tspan,[Ta za2]);
Tb2=T2(length(T2));
%final shot
za=za1+(za2-za1)/(Tb2-Tb1)*(Tb-Tb1);
[x,T]=ode45(func,tout,[Ta za]);
plot(x,T(:,1))
disp('results:')
fprintf('Final shot: za = %8.4g     T = %8.4g\n',za,T(length(T)))
fprintf('\n      x        T        dT/dx\n')
disp([x T])