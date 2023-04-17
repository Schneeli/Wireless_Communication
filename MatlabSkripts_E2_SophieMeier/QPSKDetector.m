function [x_hat] = QPSKDetector(y)
% Decides what x is the most likely given y
% x = {1+j, 1-j, -1-j, -1+j}

    if real(y) > 0
        if imag(y) > 0
            x_hat = 1 + 1i;
        else
            x_hat = 1 - 1i;
        end
    else
        if imag(y) > 0
           x_hat = -1 + 1i;
        else
            x_hat = -1 - 1i;
        end
    end
    

end