%% Problem 3.14

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function v=Piece_Func(t)
% 
% for i=1:length(t)  
%     if (0<=t(i)) & (t(i)<=8)
%         v(i)=10*t(i)^2-5*t(i);
%     elseif (8<=t(i)) & (t(i)<=16)
%         v(i)=624-5*t(i);
%     elseif (16<=t(i)) & (t(i)<=26)
%         v(i)=36*t(i)+12*(t(i)-16)^2;
%     elseif t(i) > 26
%         v(i)=2136*exp(-0.1*(t(i)-26));
%     else
%         v(i)=0;
%     end
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc, clear

t=-5:50;
v=Piece_Func(t);
plot(t,v)