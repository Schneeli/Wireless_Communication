function [a] = magnitudeProfile(p)
% Computes a specific magnitude profile for a complex number in polar
% coordinates
% p: phase/angle [0,2pi)
% a: amplitude [0,inf)

a = sin(p).*(sqrt(abs(cos(p)))/(sin(p)+(7/5)))-2*sin(p)+2;
end