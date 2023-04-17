function [x_hat] = BPSKDetector(y)
% Decides what x is the most likely given y
% x = {-1,1}
    
    if y > 0
        x_hat = 1;
    else
        x_hat = -1;
    end
    
end