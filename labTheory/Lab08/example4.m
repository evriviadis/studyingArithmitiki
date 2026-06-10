%% ASKHSH 4
%% Xrhsimopoihste tis katallhles synarthseis toy Matlab, wste na efarmosete th me8odo twn
%% elaxistwn tetragwnwn gia na ypologisete ta polywnyma 4ou kai 8ou ba8mou pou proseggizoun
%% ta parakatw dedomena

disp('ASKHSH 4'); clf; clear all;
x = linspace(0,3,41); n = length(x);

y = [ 2.07458  1.78801  2.07548  1.97954  2.08945  1.63480 ...
   2.03053  1.74630  1.79267  1.42920  1.14101  1.32438 ...
   1.17944  0.93214  0.87631  0.80062  0.69002  0.79622...
   0.73527  0.60637  0.80011  0.95631  0.64858  0.95624 ...
   0.62853  0.55175  0.90018  1.00167  0.60299  1.05339 ...
   0.87300  0.99931  1.01089  1.11733  0.95633  1.15222 ...
   1.09389  0.86498  1.04563  1.11432  1.15554 ];

synt4 = polyfit(x,y,4);
ypoly4 = polyval(synt4, x);
sse4 = norm(y-ypoly4,2)/norm(y,2)


synt8 = polyfit(x,y,8);
ypoly8 = polyval(synt8, x);
sse8 = norm(y-ypoly8,2)/norm(y,2)

plot(x,y,'*k', 'linewidth',2); hold on;
plot(x,ypoly4,':b','linewidth',2);
plot(x,ypoly8,'--r','linewidth',2);    
legend('shmeia','4ou bathmou','8ou ba8mou');