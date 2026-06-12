t = [0.0, 1.0, 2.0, 3.0, 4.0];
x = [1.2, 2.5, 5.1, 10.4, 18.0];

p = polyfit(t, x, 4);
dp = polyder(p);


disp("This is the p:");
disp(p);
disp("This is the dp:");
disp(dp);



speed = polyval(dp, 2.5)