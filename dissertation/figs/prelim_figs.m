clearvars; close all;
prelim_path = [dropbox_path 'Research/papers,etc/prelim/figs/'];
j2012_path = [dropbox_path 'Research/papers,etc/papers/2012.jasa/eps/Figures/'];

fig = gobjects(1);

fig_group = 'usbe_lung';

switch fig_group
    % Lung figs
    case 'usbe_lung'        
        if true
            fig(1) = openfig('./lung_figs/vorticity_vs_y0');
            
        
        elseif true
            fig(1) = openfig('./lung_figs/p0_vs_y');
            ax = gca;
            ax.XTickLabelMode='auto'
            ax.XTick= 0:5:45;
            ax.XLabel.String='Nominal time to interface $(\lambda/c_w)$';
            
            if false
                savefig(fig(1),[prelim_path 'lung_figs/p0_vs_t'],'compact')
                export_fig(fig(1),[prelim_path 'lung_figs/p0_vs_t'],'-png','-r400')
            end
            
            % Nominal time figure
            run('/mnt/hdd/data/postproc/get_constants.m')
            mylines=findall(ax,'type','line');
            mylines.XData = mylines.XData/cw;
            ax.XLim=[-1,max(mylines.XData)];
            ax.XTickMode='auto';
            mytext=findall(gca,'type','text');
            mytext=mytext(1);
            mytext.Position(1)=max(mylines.XData)/4;
            ax.XLabel.String='Nominal time to interface';
            savefig(fig(1),[prelim_path 'lung_figs/p0_vs_t_nd'],'compact')
            
            if false
                export_fig(fig(1),[prelim_path 'lung_figs/p0_vs_t_nd'],'-png','-r400')
                export_fig(fig(1),[prelim_path 'lung_figs/p0_vs_t_nd'],'-pdf')
                export_fig(fig(1),[prelim_path 'lun'],'-pdf')
            end
            
            % Wave logic schematic
            
                        
            % Remove unwanted text and ticks
            ax.Visible='off';
            delete(mytext)
            ax.XTick=[];
            ax.YTick=[];
            
            
            % Add sinusoid arround trapezoidal wave
            A = max(mylines.YData); %amplitude
            T = 2*range(mylines.XData(mylines.YData~=0)); %period
            f = 2*pi/T;
            x = 0:0.01:T;
            y = A*sin(f*x);
            
            ax.XLim(2) = T*2.5;
            ax.YLim = [-A*1.25 A*1.25];
            hold on
%             plot(x,y,'k') % Plot whole sinusoid
            plot(x(1:end/2)+T/3,y(1:end/2)-A/2,'k')
            
            
            % Move trapzwave to the right
            mylines.XData = mylines.XData+T*1.5;
            mylines.YData = mylines.YData-A/2
            
            % Mini- sin waves
            xm = (x-min(x))*0.4-T*0.7;
            ym = (y)*0.4;
            ym_ = [(ym+A/2); ym; ym-A/2]
            plot(xm,ym_,'k')

            ax.XLim(1) = -2*T;
            
            % Load the pulse and scale to look right%           
            fig(2) = openfig('lung_figs/p0_vs_t_us.fig')
            pulselines=findall(fig(2),'type','line');                        
            xp = (pulselines.XData);
            xp = (xp-min(xp))*2 - 5.5*max(xp);
            yp = pulselines.YData/max(pulselines.YData)*A;
            close(fig(2));
            
            figure(fig(1)); hold on;
            ax.XLim(1)=min(xp)
            plot(xp,yp,'k')
            
            delete(mytext)
            
            box on
            
            plot2svg('lung_figs/wave_logic_schematic.svg',fig(1))
            
            
            
        elseif true %Schematic
            fig(1) = figure;
            ax(1) = axes;
            hold on
            box on
            A = 0.03;
            x = 0:0.01:1;
            y = A*sin((x-0.25)*2*pi)-A;
            plot(x,y,'k')
            ax.XLim = [0,1];
            ax.YLim = [-1.5, 1.5];
            ax.XTickLabel = strcat(ax.XTickLabel, '\lambda');
            ax.YTickLabel = strcat(ax.YTickLabel, '\lambda');
            
            
            %             line([0, 0.45],[-0.85, -0.85], 'Color','k')
            %             line([0.55, 1],[-0.85, -0.85], 'Color','k')
            %             textt(1) = text(0.475, -0.85, '$\lambda$ ', 'FontSize',20,'interpreter','LaTeX');
            textt(1) = text(0.525, 0.85, 'Acoustic wave', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            textt(2) = text(0.03, 0.55, 'Water ', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            textt(3) = text(0.03, 0.15, 'Air ', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            
            %             text(0.5, -0.85, '$\lambda$ ', 'angle',30,'FontSize',20,'interpreter','LaTeX')
            
            % Zoomed schematic of interface
            x0= 0.6;
            y0 = 0.15;
            w = 0.275;
            h = 0.2;
            x = x0:0.01:x0+w/ax(1).Position(3);
            y = 1.75*h*sin((x-x0)*2*pi/range(x)-pi/2)+y0*range(ax(1).YLim) + ax(1).YLim(1);
            annotation(fig(1),'rectangle', [x0 y0 w h]);
            line(x+0.01,y+0.07,'color','k')
            
            
            % Create acoustic wave figure
            annotation(fig(1),'arrow',[0.5 0.5],    [0.825 0.65]);
            annotation(fig(1),'line',[0.475 0.525],    [0.8 0.8]);
            annotation(fig(1),'line',[0.45 0.55],    [0.75 0.75]);
            annotation(fig(1),'line',[0.425 0.575],    [0.7 0.7]);
            
            % Create a(t) label
            annotation(fig(1),'arrow',[x0 x0]-w*0.2,    [y0+0.7*h y0+h]);
            annotation(fig(1),'arrow',[x0 x0]-w*0.2,    [y0+0.3*h y0]);       
            textt(1) = text(x0-w*0.5, y0+0.1*h, '$2\, a(t)$', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            
            
        end
        
        
        
    case 'usbe_bubble' % Bubble paper figs
        if false
            figname = 'Rstarmax_Pm';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica')
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'PFPair';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica')
            ax = findall(fig,'type','axes');
            ax(1).YLabel.String = 'Input pressure, (p_A / p_{atm})'
            ax(2).YLabel.String = 'Radius, (R(t) / R_0)'
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'TmaxPFPair';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'Rstarmax_R0';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'Rstarmax_F';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'Rmax_F';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'Rstarmax_F_Ca=20';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
            
        elseif false
            figname = 'Rstarmax_F_Ca=0,1';
            fig(1) = openfig([j2012_path, figname '.fig']);
            spiffyp(fig(1),'square')
            tt = findall(fig,'type','text');
            [tt.FontName] = deal('Helvetica');
            export_fig(fig(1), [prelim_path figname], '-pdf', '-r400')
        end
end