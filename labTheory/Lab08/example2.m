clf; clear; clc;
%% ASKHSH 2
%% Esto ta shmeia (1,1) , (2, 1.5) kai (3, 1.25)
%% Me diakrita elaxista ypologiste thn ey8eia grammh poy proseggizei ta shmeia.
x = [1 2 3]';
y = [1 1.5 1.25]';

poly = polyfit(x, y , 1)
sfalma = norm(y - polyval(poly, x))
sxeSfalma = norm(y - polyval(poly, x)) / norm(y)

plot(x, y, '*k', 'linewidth',2); hold on
xplot = linspace(0, 4 , 400);
y2plot = polyval(poly, xplot);
plot(xplot, y2plot ,'g-', 'linewidth',2)

xlim([0,5])
ylim([0,5])


