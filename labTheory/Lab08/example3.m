%% ASKHSH 3
%% Esto ta shmeia (-1,1.5) , (0, 4) kai (2, -3)
%% Me diakrita elaxista ypologiste to polyonymo p(x) = ax^2 + b poy proseggizei ta shmeia.

clf; clear; clc;
x = [-1 0 2]';
y = [1.5 4  -3]';
a = [1 1 ; 1 0 ; 1 4];
m = a' * a;
b = a' * y;
coef = m\b;
coef=flipud(coef)

sfalma = norm(y - (coef(1)*x.^2 + coef(2)))
sxeSfalma = sfalma / norm(y) 

plot(x, y, '*k', 'linewidth',2); hold on
xplot = linspace(-2, 4 , 600);
%yplot = coef(1)*xplot.^2 + coef(2);
yplot = polyval([coef(1) 0 coef(2)],xplot);
plot(xplot, yplot ,'r-', 'linewidth',2)

% coef2 = a\y