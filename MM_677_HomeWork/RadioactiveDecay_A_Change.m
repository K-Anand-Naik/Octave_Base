%Decay problem variation of K and A

clear all;
clc;

t = 0:0.01:10;
A1 = 1;
A2 = 2;
A3 = 3;
A4 = 4;
A5 = 5;
y1 = A1*exp(-2.*t);
y2 = A2*exp(-2.*t);
y3 = A3*exp(-2.*t);
y4 = A4*exp(-2.*t);
y5 = A5*exp(-2.*t);
xlabel('Time,t')
ylabel('Amount to be decayed, grm')

plot(t,y1,"linewidth",3,t,y2,'linewidth',1,t,y3,"linewidth",3,t,y4,'linewidth',1,t,y5,"linewidth",3)



