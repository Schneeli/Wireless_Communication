% 4.1 Generate a Nice Plot

% generate a vector with 10 phase values evenly distributed between 0 and
% 2pi
ranP = linspace(0,2*pi,100);

% calculate the magnitues for the pahses
a = magnitudeProfile(ranP);

% Plot the results
h1 = figure(1);
plot(ranP,a)
xlabel('phase')
ylabel('magnitude')
grid on


% calculate compex number 

z = a.*(exp(1i.*ranP));

h2 = figure(2);
plot(real(z), imag(z))
xlabel('real')
ylabel('imaginary')
title('Sophie Meier')
grid on

