%% Friss Free Space Model
%% THEORY
% Friis free space propagation model is used to model the line-of-sight (LOS) path loss incurred in a free
% space environment, devoid of any objects that create absorption, diffraction, reflections, or any other 
% characteristic-altering phenomenon to a radiated wave.
%% CODE
PtdBm=60;
%PtdBm is the Input - transmitted power in dBm
GtdBi=20;
%GtdBm is the Gain of the transmitted antenna in dBi
GrdBi=10;
%GtdBm is the Gain of the receiver antenna in dBi
frequency=2*10^9;
%frequency is the transmitted signal frequency in Hertz
%frequency here is 2 GHz
d=41935000*(1:1:200);
%array of input distances in meters
L=1;
%L is the system loss, No loss case, L=1
%Conversion to Watts
Pt=10^((PtdBm-30)/10);
Gt=10^(GtdBi/10);
Gr=10^(GrdBi/10);
lambda=3*10^8/frequency;
%lambda is the wavelength in meters
Pr=Pt*(Gt*Gr*lambda^2)./((4*pi.*d).^2*L);
PrdBm=10*log10(Pr)+30;
plot(log10(d),PrdBm);
title('Free spacepath loss model')
xlabel('log10(d)');
ylabel('Pr(dBm)');