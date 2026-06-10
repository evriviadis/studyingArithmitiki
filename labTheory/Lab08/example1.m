clf; clear; clc;
%% ASKHSH 1
%% Esto ta shmeia (1,1) , (2, 1.5) kai (3, 1.25)
%% Me diakrita elaxista ypologiste thn ey8eia grammh poy proseggizei ta shmeia.
x = [1 2 3]';
y = [1 1.5 1.25]';
a = [1 1 ; 1 2 ; 1 3];

m = a' * a;
b = a' * y;
coef = m\b
coef=flipud(coef)
sfalma = norm(y - polyval(coef, x))
sxeSfalma = norm(y - polyval(coef, x)) / norm(y)

plot(x, y, '*k', 'linewidth',2); hold on

xplot = linspace(0, 4 , 400);
yplot = polyval(coef, xplot);
plot(xplot, yplot ,'r-', 'linewidth',2)
xlim([0,5])
ylim([0,5])

% coef2 = a\y;