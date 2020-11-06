function diffex(func,dfunc,x,n)
format long
dftrue=dfunc(x);
h=0.25;
H(1)=h;
D_c(1)=(func(x+h)-func(x-h))/(2*h);  %centerd
D_b(1)=(func(x)-func(x-h))/(1*h);   %backword
D_f(1)=(func(x+h)-func(x))/(1*h);   %forward
E_c(1)=abs(dftrue-D_c(1));
E_b(1)=abs(dftrue-D_b(1));
E_f(1)=abs(dftrue-D_f(1));
for i=2:n
    h=h/4;
    H(i)=h;
    D_c(i)=(func(x+h)-func(x-h))/(2*h); %centerd
    D_b(i)=(func(x)-func(x-h))/(1*h);  %backword
    D_f(i)=(func(x+h)-func(x))/(1*h);  %forward
    E_c(i)=abs(dftrue-D_c(i));
    E_b(i)=abs(dftrue-D_b(i));
    E_f(i)=abs(dftrue-D_f(i));
end
L=[H' D_c' E_c']';
L2=[H;D_b;E_b];
L3=[H;D_f;E_f];
% plot(H,E_c,H,E_b,H,E_f),xlabel('Step Size'),ylabel('Error')
% title('Plot of Error Versus Step Size')
% legend('centerd','backword','forward')
% format short