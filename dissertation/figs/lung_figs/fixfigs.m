close all
pp_dir = '/hdd/Users/awesome/Dropbox/Research/Papers,etc/prelim/figs/lung_figs/';

cd(pp_dir)
% figlist = dir(['*.fig']);
figlist='interface_multi-lag.fig';
figlist={...'trapz10_intf_schematic',    'trapz10_circ_schematic','interface_multi-amp_norm','circulation_multi-amp_norm',  'interface_multi-amp_loglog_roe',  'circulation_multi-amp2_roe',      'ddtcirc', 
    ...'interface_multi-lag',  'circulation_multi-lag',  'us_intf_schematic',    'us_circ_schematic'}
    'p0_vs_t_us', 'p0_vs_y'}
for n = 1:length(figlist);
% figstr = strrep(figlist(n).name, '.fig', []);
% figstr = strrep(figlist(n).name, '.fig', []);

figure(1) = openfig([figlist{n}, '.fig']);
fig1 = figure(1);
myax = findall(fig1,'type','axes');

myax.XLabel.FontSize = 30;
myax.YLabel.FontSize = 30;
% mytext = findall(fig1,'type','text')

mytarrow = findall(gcf,'type','textarrow');
if ~isempty(mytarrow);  [mytarrow.FontSize]=deal(27); end

savefig(fig1, [figlist{n}, '.fig'], 'compact')
export_fig(fig1,figlist{n} ,'-jpg', '-r400');

close all
end

%% Manual fig fixes
