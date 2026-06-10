x = 0:pi/4:2*pi; 
v = sin(x);
xq = 0:pi/16:2*pi;
vq1 = interp1(x,v,xq);
plot(x,v, '*',xq,vq1,'-o');
vq2 = interp1(x,v,xq,'spline');
plot(x,v, 'k*',xq,vq1,'b-o', xq,vq2,'r-+');