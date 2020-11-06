% Problem 24.6
clear all, clc

% Test the shooting method
% We need a M-file: bvshoot and prob2406sys.
[x,T]=bvshoot(@prob2406sys,[0 10],[240 150],[0:1:10]);