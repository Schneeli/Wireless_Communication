function [SER] = computeSER(T,s,t)
% Computes the SER of the detectors BPSKDetector and QPSKDetector
% Input: T := number of trials (Monte Carlo simulation)
% Input: s := varainace of noise
% Input: t := tpye of encoding (BPSK = 1 or QPSK = 2)
% Output: SER := simulated SER (simbol error rate)

    xt = randi([0,1], T, 1); % vector of size numberOfTrial filled with random 0 and 1 (equally likely)
    xt = 1-2*xt; % [0,1] -> [-1,1]
    %nt = normrnd(0,s, numberOfTrial,1); % noise vector with zero-mean and variance s of size numberOfTrial
    nt = randn(T,1);

    if t == 1
        yt = xt + sqrt(s)*nt;
        % Detect yt
        x_hat = zeros(T,1);
        for c = 1:T
        x_hat(c,1) = BPSKDetector(yt(c,1));
        end    
        
        result = x_hat - xt; % a zero entry means correct decoding
        correct = sum(result == 0); % Count number of right detection 
        wrong = T - correct;
        SER = wrong/T;

    else
        x = xt + 1i*xt;
        n = sqrt(s)*nt + 1i*sqrt(s)*nt;
        yt = x + n;
        % Detect yt
        x_hat = zeros(T,1);
        for c = 1:T
            x_hat(c,1) = QPSKDetector(yt(c,1));
        end    
        result = x_hat - x; % a zero entry means correct decoding
        correct = sum(result == 0); % Count number of right detection 
        wrong = T - correct;
        SER = wrong/T;
    end
    

end