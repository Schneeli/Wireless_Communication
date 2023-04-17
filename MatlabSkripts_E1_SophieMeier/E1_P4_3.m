% Problem 4: Error-Rate Performance of BPSK Signaling in an AWGN Channel
% Part 3 & 4

trials = 10000; % Number of Trials specified in Exercise

SNR_dB = -10:20; % SNR values in dB according to Exercise

SNR = 10.^(SNR_dB./10); % convert SNR according to formula in Exercise (page 6)

variance = 1./SNR; 

% Compute SER for the different SNR values
res_SER = zeros(31,1);
for d = 1:31
    res_SER(d,1) = computeSER(trials, variance(d));
end

% Plot accoring to Exercise description
figure(1)
semilogy(SNR_dB, res_SER, '-bo')
hold on
semilogy(SNR_dB,qfunc(1./sqrt(variance)))
grid on
axis([-10 20 1e-6 1])
xlabel('signal-to-noise ratio (SNR) [dB]')
ylabel('symbol error rate (SER)')
legend('simulated SER', 'analytical')
title('Problem 4 Part 3 & 4')