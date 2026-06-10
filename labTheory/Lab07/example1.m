[X,Y] = meshgrid(-8:0.25:8);
R = sqrt(X.^2 + Y.^2);
Z = sin(R)./R;

figure('Name','mesh')
mesh(X,Y,Z)
colorbar

figure('Name','meshc')
meshc(X,Y,Z)

figure('Name','contour')
contour(X,Y,Z)

