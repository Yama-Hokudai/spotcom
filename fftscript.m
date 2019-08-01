Fs=sampling;
L=length(X);

Y=fft(X);
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);

figure;
subplot(3,1,1)
f=Fs*(0:(L/2))/L;
plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f(Hz)')
ylabel('|P1(f)|')

subplot(3,1,2);
L2=L*48000/Fs;
f2=48000*(0:(L2/2))/L2;
plot(f2,P1(1:length(f2)));
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f(Hz)')
ylabel('|P1(f)|')

subplot(3,1,3);
L3=L*2*48000/Fs;
f3=2*48000*(0:(L3/2))/L3;
plot(f3,P1(1:length(f3)));
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f(Hz)')
ylabel('|P1(f)|')