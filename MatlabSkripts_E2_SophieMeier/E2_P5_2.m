% Exercise 2 
% Problem 5: Error-Rate Performance of QPSK Signaling in an AWGN Channel
% Part 2 & 3


T = 10000; % Number of Trials20
SNR_dB = -10:20; % SNR values between -10dB and 20dB
SNR = 10.^(SNR_dB./10); % Convert SNR dB values 
variance = 1./SNR;


% Compute SER for the different SNR values
res_SER_BPSK = zeros(31,1);
for d = 1:31
    res_SER_BPSK(d,1) = computeSER(T, variance(d),1);
end

res_SER_QPSK = zeros(31,1);
for d =1:31
    res_SER_QPSK(d,1) = computeSER(T, variance(d)*2,2); % The signal energy of QPSK is double that of BPSK So the same is fo the snr 
end

% Plot accoring to Exercise description
figure(1)
semilogy(SNR_dB, res_SER_BPSK, '-bo')
hold on
semilogy(SNR_dB, res_SER_QPSK, '-r*')
grid on
axis([-10 20 1e-6 1])
xlabel('signal-to-noise ratio (SNR) [dB]')
ylabel('symbol error rate (SER)')
legend('simulated BPSK', 'simulated QPSK')
title('Problem 5 Part 3 & 4')