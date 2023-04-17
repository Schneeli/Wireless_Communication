% Problem 5: Generating Correlated Complex-Gaussian Random Vectros in
% MATLAB
% Part 1

% This is not working yet: Check with Master Solution when they come out!

numberOfTrials = 10000;
mu = [0.5; -0.5; 0.3];
K = [1.0, 0.2, 0.1; 0.2,1.0,0.2; 0.1, 0.2, 1.0];
J = 0;

z1 = randn(3,1);
z2 = randn(3,1);

x = z1 + mu; 
y = z2 + mu; 




