h = [8, 10, 12, 14, 16, 18];
t = [14.5, 16.2, 20.1, 22.5, 21.0, 18.3];


newh = [9, 11, 13, 15, 17];
yLinear = interp1(h, t, newh, "linear");
ySpline = spline(h, t, newh);


timi20 = 20
Linear20 = interp1(h, t, timi20, "linear", "extrap");
Spline20 = spline(h, t, timi20);

errLinear = abs(15.2 - Linear20);
errSpline = abs(15.2 - Spline20);

sxetikoLinear = errLinear / 15.2;
sxetikoSpline = errSpline / 15.2;

shmeia =  linspace(8,20,100);
yLinearGraph = interp1(h, t, shmeia, "linear", "extrap");
ySplineGraph = spline(h, t, shmeia);

figure;
plot(h, t, ".k");
hold on;
plot(newh, yLinear, "*r");
plot(newh, ySpline, "*b");
plot(timi20, 15.2, "sk");
plot(timi20, Linear20, "dr");
plot(timi20, Spline20, "db");
plot(shmeia, yLinearGraph, "-r");
plot(shmeia, ySplineGraph, "-b");
xlabel("h (meters)");
ylabel("t (seconds)");
title("Exercise 1");
legend("Original Data", "Linear Interpolation", "Spline Interpolation");