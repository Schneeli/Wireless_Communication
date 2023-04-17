% Problem 3 A Simple Channel with Two Taps 
% Part 2

s0 = 1; % variance (sigma_0)² 
s1 = 1; % variance (sigma_1)²
t0 = 1; % delay t_0

[t,f] = meshgrid(0:0.1:2); % sweeping delta_f and delta_t in range [0,2]

Z = s0 + s1 * exp(-2*1i*pi*t0*f); % Calculated on paper

% Plot
figure(1)
surf(t,f,abs(Z))
xlabel('delta_t');
ylabel('delta_f');
zlabel('abs(R_H(delta_t; delta_f)');
title('Exercise 1, Problem 3, Part 2')
