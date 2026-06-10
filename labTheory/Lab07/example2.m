%% H synarthsh peaks einai h 
%% f(x,y)=z =  3*(1-x).^2.*exp(-(x.^2) - (y+1).^2) ... 
%% - 10*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2) ... 
%% - 1/3*exp(-(x+1).^2 - y.^2) 

[X,Y] = meshgrid(-3:.125:3);
Z = peaks(X,Y);
figure(1)
meshc(X,Y,Z);
figure(2)

contour(X,Y,Z);
axis([-3 3 -3 3 -10 10])