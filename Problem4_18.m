%% Problem 4.18
%%% 김민영 학생의 답안 %%%
%%% 주석을 추가하였습니다.%%%
clc, clear

x = 0.1;             % base point
x_true = 1/(1-x);    % true value
x_appro(1) = 1;      % initial value of series
i = 2;               % initial number of index

% initial error
error(1) = ((x_true - x_appro(1))/x_true)*100;

% while loop
while 1
    % The criterion for error
    if abs(error(i-1)) < 0.01 && abs(error(i-1)) >= 0.001
        break
    end
    % iteration of approximated value
    x_appro(i) = x_appro(i-1) + x^(i-1);
    % iteration of error
    error(i) = ((x_true - x_appro(i))/x_true)*100;
    i = i+1; % index 
end

% results
result = [1:(i-1);error];

% print
fprintf('n-terms     relativ error\n')
fprintf('----------------------------\n')
fprintf('%3d          %8.5f%%\n',result)
