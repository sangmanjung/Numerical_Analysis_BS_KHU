% Problem 24.4
close all, clear all, clc

% parameters & boundary 
dx=2; x=0:dx:20; n=length(x);
y=zeros(n,1); y(1)=5; y(end)=8;

%%% finite difference method and LU decomposition
% *Use the Centered Diffrence scheme (refer to figure 21.5)

% coefficients
alpha=(1/dx)-(7/dx^2); beta=(14/dx^2)+1; gamma=-(1/dx)-(7/dx^2);

% matrix form
A=zeros(n-2,n-2);
v1=diag(ones(n-2,n-2)).*alpha'; v2=diag(ones(n-2,n-2)).*beta'; v3=diag(ones(n-2,n-2)).*gamma';
D1=diag(v1(1:8,1),1); D2=diag(v2); D3=diag(v3(1:8,1),-1);
A=A+D1+D2+D3 % coefficient matrix

% right hand side of the scheme
b=zeros(1,n-2);
b(1)=x(2)-y(1)*gamma; b(end)=x(end-1)-y(end)*alpha;
b(2:end-1)=x(3:end-2);
b % the vector of right hand side

% computed solution using this scheme
y(2:end-1)=A\b';
fprintf('\n\n\nFinite Difference Method \n')
fprintf('------------------------\n')
fprintf('    | x |      | y | \n')
fprintf('------------------------\n')
disp([x' y])

% graph
plot(x,y,'r-o');xlabel('x-axis');ylabel('y-axis');grid
ylim([0 14.5])

