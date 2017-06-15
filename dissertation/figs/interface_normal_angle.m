close all; clear all; clc;

x=0.5:.01:1;
a0=0.03;
y=@(xx) a0*(sin((xx*2*pi)-pi/2)+1);
dydx=@(xx) 2*pi*a0*cos((xx*2*pi)-pi/2);

nx=@(xx) -dydx(xx)./sqrt(1+(a0*2*pi*cos((xx*2*pi)-pi/2)).^2);
ny=@(xx) 1./sqrt(1+(a0*2*pi*cos((xx*2*pi)-pi/2)).^2);

L=0.1;
x0=[0.5:.1:1];
xn = [x0; x0+nx(x0)*L];
yn = [y(x0); y(x0)+ny(x0)*L];


% Figure showing normal to interface
figure;
ax =axes;
axis equal
hold on;
pp_intf=plot(x,y(x)); % Plot sin curve
% plot(xn,yn,'r--')

% Magnitude of the vector
mag = sqrt(diff(xn).^2+diff(yn).^2);

% Add normal on other side
xn2 = xn;
xn2(2,:) = xn(1,:)-diff(xn);
yn2 = yn;
yn2(2,:) = yn(1,:)-diff(yn);

pp_normal=plot([xn(2,:); xn2],[yn(2,:); yn2],'r--');

% leg0=legend('interface','incoming', 'normal', 'transmitted')



% Add incoming wave (black)
xi = [xn(1,:); xn(1,:)];
yi = [yn(1,:); yn(1,:)+mag];
pp_incoming = plot(xi,yi,'k--');

% Calculate angle between normal density and pressure gradients (theta)
% phi = atan2(ny(x),nx(x));
phi = atan2(ny(x0),nx(x0));
theta=pi/2-phi; %Angle normal to surface

% Transmitted angle
ca_dim=347; %Sound speed of air (m/s)
cw_dim=1648.7; %Sound speed of water (m/s)
theta_t = asin(sin(theta)*ca_dim/cw_dim);

% Add transmitted wave (blue)
kk = 1; %Stretch the transmitted lines to see where they converge, use this to check for focusing
xn4 = [xn2(1,:); (cos(theta_t).*diff(xn2)-sin(theta_t).*diff(yn2))*kk+xn2(1,:)];
yn4 = [yn2(1,:); (sin(theta_t).*diff(xn2)+cos(theta_t).*diff(yn2))*kk+yn2(1,:)];
pp_transmitted = plot(xn4,yn4,'b--');


legend([pp_intf, pp_normal(1), pp_incoming(1), pp_transmitted(1)], 'interface','normal','incoming', 'transmitted')

% Figures of theta
% figure;
% ax =axes;
% axis equal
% hold on;
% plot(x,sin(theta))
% plot(x,rad2deg(theta))

%Calculate the mean value of sin over the 1/2 to 1 interval
sinmean=2*trapz(x0(x0>=0.5),sin(theta(x0>=0.5)));




%% Rough calculations of circulation, estimating values from memory
rhoa_dim=1.1765;
rhow_dim=996;
ca_dim=347;
cw_dim=1648.7;
pa_dim=10e6;
T=4.63e-4;


u_scale = ca_dim;
rho_scale = rhoa_dim;

ca = ca_dim/u_scale;
cw = cw_dim/u_scale;

rhoa=rhoa_dim/rho_scale;
rhow=rhow_dim/rho_scale;
pa=pa_dim/(rho_scale*u_scale^2);

Gammaw=sinmean*(pa*(rhow-rhoa)/rhow^2);
Gammaw=sinmean*(pa*T*(rhow-rhoa)/rhoa^2); %


T = 2*rhoa*ca/(rhow*cw+rhoa*ca);

baro_air_v_water =  T*(rhow/rhoa)^2







% For an interface from -1 to 1
% y=@(xx) a0*(cos((xx*pi))+1);
% dydx=@(xx) -a0*sin(pi*xx);
% 
% nx=@(xx) a0*pi*sin(pi*xx)./sqrt(1+(a0*pi*sin(pi*xx)).^2);
% ny=@(xx) 1./sqrt(1+(a0*pi*sin(pi*xx)).^2);
% 
% x0=0.5;
% xn = x0+[0,nx(x0)];
% yn = y(x0)+[0,ny(x0)];
% 
% figure;
% ax =axes;
% axis equal
% hold on;
% plot(x,y(x))
% plot(xn,yn,'r--')
% 
% 
% phi = atan2(ny(x),nx(x));
% theta=pi/2-phi;
% figure;
% ax =axes;
% axis equal
% hold on;
% plot(x,sin(theta))


