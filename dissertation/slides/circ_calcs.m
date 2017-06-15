% circ=sum(vorticity); %Actually circulation normalized by total area (multiply by range(y) * range (x) for better total (should be ~80*1 lambda)

clear; close all; clc

cd('/mnt/hdd/data/rmawave_2_10000000.0_0.03_45.0_0.0_1.0_1.0_5.0_1000_100/test_data')
load('vorticity_field.mat')
load('y0_field.mat')


% Get right half of domain
right_flag = true
if right_flag
    right_ind = x>=0.5;
    x=x(right_ind);
    y=y(right_ind);
    vorticity=vorticity(right_ind);
    y0=y0(right_ind);
end


%Find the interface (eps < y0 < eps)\
epsilon=0.001;
intf_ind = y0<(1-epsilon) & y0>epsilon;

% Find the vorticity and volume fraction values around the interface
vort_intf = vorticity(intf_ind);
y0_intf = y0(intf_ind);

intf_circ_air=sum(abs(vort_intf(y0_intf>0.9)));
intf_circ_water=sum(abs(vort_intf(y0_intf<0.1)));

xintf= x(intf_ind);
yintf= y(intf_ind);

tri = delaunay(xintf,yintf);
[r,c] = size(tri);


fig(1)=figure;
ax(1)=axes;
scatter(y0(intf_ind),vorticity(intf_ind))
ax.YLabel=ylabel('Cell-average vorticity, $\omega$','interpreter','LaTeX');
ax.XLabel=xlabel(' Volume Fraction $y_0$', 'interpreter','LaTeX');
spiffyp(fig(1));
box on

%%
binsize = 0.005;
binnum = ceil(y0_intf/binsize);
binsum = accumarray(binnum(:), vort_intf(:));
binmaxs=(1:size(binsum,1))*binsize;
binsum_area = sum(binsum*binsize);

fig(2)=figure;
ax(2)=axes;
bar(binmaxs, binsum/binsum_area);
ax(2).YLabel=ylabel('Circulation Distribution', 'interpreter','LaTeX');
ax(2).XLabel=xlabel(' Volume Fraction $y_0$', 'interpreter','LaTeX');
ax(2).XLim=[0,1];
spiffyp(fig(2));

y0c=0.5; %Cut-off volume fraction for air v water
% Portion of vorticity in air/water dominated fluid
circ_air_frac = sum(vort_intf(y0_intf<(1-y0c)))/sum(vort_intf)
%circ_air_frac = trapz(binmaxs(binmaxs<y0c), binsum(binmaxs<y0c)/binsum_area); %Check of the above, should be same

circ_water_frac = sum(vort_intf(y0_intf>=y0c))/sum(vort_intf) 
%circ_water_frac = trapz(binmaxs(binmaxs>=y0c), binsum(binmaxs>=y0c)/binsum_area); %Check of the above, should be same

figpath = '/hdd/Users/awesome/Dropbox/Research/Papers,etc/group_meetings/20160602_circ_y0_distribution_patterson/figs/';
export_fig(fig(1),[figpath 'vorticity_vs_y0'],'-r300','-jpg')
export_fig(fig(2),[figpath 'circ_y0_dist'],'-r300','-jpg')


% h = trisurf(tri, xintf, yintf, vort_intf);
% axis vis3d

%% Clean it up

% axis off
% l = light('Position',[-50 -15 29])
% set(gca,'CameraPosition',[208 -50 7687])
% lighting phong
% shading interp
% colorbar EastOutside





