function [SER] = computeSER(numberOfTrial,s)
    % Computes the SER of the detector implemented in detector.m
    % Input: numberOfTrials (monte Carlo Simulation)
    % Input: s = variance of noise
    % Output: simulated SER (sampling error rate)


    xt = randi([0,1], numberOfTrial, 1); % vector of size numberOfTrial filled with random 0 and 1 (equally likely)
    

    xt = 1-2*xt; % [0,1] -> [-1,1]

    %nt = normrnd(0,s, numberOfTrial,1); % noise vector with zero-mean and variance s of size numberOfTrial
    nt = randn(numberOfTrial,1);

    yt = xt + sqrt(s)*nt;
    
    % Detect yt
    x_hat = zeros(numberOfTrial,1);
    for c = 1:numberOfTrial
     x_hat(c,1) = detector(yt(c,1));
    end
    
    result = x_hat - xt; % a zero entry means correct decoding
    correct = sum(result == 0); % Count number of right detection 
    wrong = numberOfTrial - correct;
    SER = wrong/numberOfTrial;

end