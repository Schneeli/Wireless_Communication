function [x_hat] = detector(y)
% Decides wheter to interpret input as +1 or -1
% if y < 0 x_hat = -1 else x_hat = +1
    if y < 0 
        x_hat = -1;
    else
        x_hat = 1;
    end

end