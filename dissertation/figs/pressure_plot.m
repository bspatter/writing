clear; close all;
US = xlsread([dropbox_path 'Research/CFD/MyCode/In/USPulses.xlsx'],1);
Pa = US(:,8);
t = US(:,1);



figure
plot((t-t(1))*1e6,Pa)
xlabel('time ($\mu$s)','interpreter','latex')
title('Pressure, $P_a(t)$ (MPa)','interpreter','latex')

%%
clear; close all;
load([dropbox_path 'Research/CFD/MyCode/In/USPulses.mat']);
Pa = US.f150.Tp9.amp;
t = US.f150.Tp9.time;



figure
plot(t*1e6,Pa)
xlabel('time ($\mu$s)','interpreter','latex')
title('Pressure, $P_a(t)$ (MPa)','interpreter','latex')
axis tight

%%
clear US
load([dropbox_path 'Research/CFD/MyCode/In/USPulses.mat')

% Next, make plot of MI vs R or freq vs A, or something
prp = zeros(30,1); % Min pressure in MPa
prp(1) = abs(min(US.f150.Tm9.amp));
prp(2) = abs(min(US.f150.Tm6.amp));
prp(3) = abs(min(US.f150.Tm3.amp));
prp(4) = abs(min(US.f150.Tp0.amp));
prp(5) = abs(min(US.f150.Tp3.amp));
prp(6) = abs(min(US.f150.Tp6.amp));
prp(7) = abs(min(US.f150.Tp9.amp));

prp(8) = abs(min(US.f225.Tm9.amp));
prp(9) = abs(min(US.f225.Tm6.amp));
prp(10) = abs(min(US.f225.Tm3.amp));
prp(11) = abs(min(US.f225.Tp0.amp));
prp(12) = abs(min(US.f225.Tp3.amp));
prp(13) = abs(min(US.f225.Tp6.amp));
prp(14) = abs(min(US.f225.Tp9.amp));

prp(15) = abs(min(US.f350.Tm9.amp));
prp(16) = abs(min(US.f350.Tm6.amp));
prp(17) = abs(min(US.f350.Tm3.amp));
prp(18) = abs(min(US.f350.Tp0.amp));
prp(19) = abs(min(US.f350.Tp3.amp));
prp(20) = abs(min(US.f350.Tp6.amp));

prp(21) = abs(min(US.f500.Tm9.amp));
prp(22) = abs(min(US.f500.Tm6.amp));
prp(23) = abs(min(US.f500.Tm3.amp));
prp(24) = abs(min(US.f500.Tp0.amp));
prp(25) = abs(min(US.f500.Tp3.amp));
prp(26) = abs(min(US.f500.Tp6.amp));

prp(27) = abs(min(US.f750.Tm9.amp));
prp(28) = abs(min(US.f750.Tm6.amp));
prp(29) = abs(min(US.f750.Tm3.amp));
prp(30) = abs(min(US.f750.Tp0.amp));

fc = ones(30,1); %Median frequency in MHz
[fc(1:7), fc(8:14), fc(15:20), fc(21:26), fc(27:30)] = deal(1.5, 2.25, 3.5, 5, 7.5);

MI = prp./sqrt(fc);

figure
scatter(fc,MI)
for n = 1:30; text(fc(n),MI(n), num2str(n)); end
xlabel('Frequency, $F_c$ (MHz)')
ylabel('Mechanical Index, $PRPA / \sqrt{F_c}$','interpreter','latex')


