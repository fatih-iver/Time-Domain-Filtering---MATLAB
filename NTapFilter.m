[y,Fs] = audioread('mike.wav');

% N = 50;
% K = 0.1; 
% results = zeros(1, 101);
% position = 1;
% for alpha = 0.00:0.01:1.00  
%     result = y;
%     delayed = y;
%     for index = 1:N
%         delayed = delayseq(delayed, K, Fs);
%         result = result + delayed * (-alpha).^index;
%     end
%     SNR = 10*log10(sum(y.^2) / sum((result - y).^2));
%     results(position) = SNR;
%     position = position + 1;
% end
% plot(results);

K = 0.1;
alpha = 1;
results = zeros(1, 50);
position = 1;
for N = 1:50   
    result = y;
    delayed = y;
    for index = 1:N
        delayed = delayseq(delayed, K, Fs);
        result = result + delayed * (-alpha).^index;
    end    
    SNR = 10*log10(sum(y.^2) / sum((result - y).^2));
    results(position) = SNR;
    position = position + 1;
end
plot(results);

N = 50;
alpha = 1;
results = zeros(1, 4);
position = 1;
for K = 0.1:0.1:0.4   
    disp(K)
    result = y;
    delayed = y;
    for index = 1:N
        delayed = delayseq(delayed, K, Fs);
        result = result + delayed * (-alpha).^index;
    end    
    SNR = 10*log10(sum(y.^2) / sum((result - y).^2));
    results(position) = SNR;
    position = position + 1;
end

results
plot(1:4, results);
