function [x] = collatz(n)
% Simulate Collatz conjecture
% input: n
% output: x (vector with all subresults)

x = n;

while n ~= 1
    if mod(n,2) == 0
        n = n/2;
        x(end+1) = n;
    else
        n = n*3 + 1;
        x(end+1) = n;
    end
end

end