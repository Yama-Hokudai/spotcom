Fs=comSampling;
T=1/Fs;
L=length(X);
t=(0:L-1)*T;

Y=fft(X);
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);

f=Fs*(0:(L/2))/L;
plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f(Hz)')
ylabel('|P1(f)|')
figure
plot(1:(Fs/2/(L/2)):24000,P1(1:ceil(24000/(Fs/2/(L/2)))))
