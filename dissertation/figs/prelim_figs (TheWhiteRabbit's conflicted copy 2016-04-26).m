clearvars; close all;
prelim_path = [dropbox_path 'Research/Papers,etc/prelim/figs/'];
j2012_path = [dropbox_path 'Research/Papers,etc/papers/2012.jasa/eps/Figures/'];

fig = gobjects(1);

fig_group = 'usbe_lung';

switch fig_group
    % Lung figs
    case 'usbe_lung'
%         if false
% %             fig(1) = 
%         
        if true %Schematic
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
            textt(2) = text(0.03, 0.55, 'Tissue (Water) ', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            textt(3) = text(0.03, 0.15, 'Alveolus (Air) ', 'FontSize',20,'interpreter','LaTeX','Units','normalized');
            
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