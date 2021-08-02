%% Path Loss Model

%% CODE
clc;
clear all;
PtdBm = 55;
GtdB = 25;
GrdB = 20;
f = 1.2*10^9;
d = 41935000*(1:1:500);
L=1;
sigma= 1;
Pt = 10^((PtdBm-30)/10);
Gt = 10^((GtdB-30)/10);
Gr = 10^((GrdB-30)/10);
lambda = 3*10^8/f;
Pr = Pt*(Gt*Gr*lambda^2)./((4*pi.*d).^2*(L));
X= sigma*randn(size(Pr));
Ploss = Pr./Pt;
PLdB = 10*log10(Ploss)+ 10*log10(X);
PrdB = 10*log10(Pr)+ 30;
plot(log10(d),10*log10(Ploss),'G','LineWidth',2);
xlabel('log10(d)');
ylabel('Pr/Pt(dB)')
title('Log Normal Shadowing Model');
hold on
plot(log10(d),PLdB,'r.');
legend('Propagation Loss','Due to Log normal Shadowing');
%% CONCLUSION
% From this experiment we can conclude that as the distance between the
% transmitter and receiver increases the value of path loss decreases.