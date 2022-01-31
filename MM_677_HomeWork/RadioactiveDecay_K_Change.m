%Decay problem variation of K and A

clear all;
clc;

t = 0:0.01:10;
k1 = 1;
k2 = 2;
k3 = 3;
k4 = 4;
k5 = 5;
y1 = 2*exp(-k1.*t);
y2 = 2*exp(-k2.*t);
y3 = 2*exp(-k3.*t);
y4 = 2*exp(-k4.*t);
y5 = 2*exp(-k5.*t);
xlabel('Time,t')
ylabel('Amount to be decayed, grm')

plot(t,y1,"linewidth",3,t,y2,'linewidth',1,t,y3,"linewidth",3,t,y4,'linewidth',1,t,y5,"linewidth",3)



