%% FSK
clc;
clear all;
fc = input('enter frequency of of carrier signal');
fm = input('enter frequency of of message signal');
amp = input('enter amplitude');
t = 0:0.001:1;
c = amp.*sin(2*pi*fc*t);
m = square(2*pi*fm*t);
w=c.*m;
subplot(3,1,1)
plot(t,m)
xlabel('time');
ylabel('amplitude');
title('message signal');
grid on
subplot(3,1,2)
plot(t,c)
xlabel('time');
ylabel('amplitude');
title('carrier signal');
grid on
subplot(3,1,3)
plot(t,w)
xlabel('time');
ylabel('amplitude');
title('modulated signal');
grid on
%% CONCLUSION
% From this experiment we can conclude that in PSK,a zero binary input, the phase 
% will be 0° and for a high input, the phase reversal is of 180°.
