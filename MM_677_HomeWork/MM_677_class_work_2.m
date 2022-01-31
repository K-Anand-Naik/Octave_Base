clear all;
t = 0:0.1:10;
k = 1.0;
y1 = 2.*exp(-k.*t);
y2 = 4.*exp(-k.*t);
y3 = 6.*exp(-k.*t);
y4 = 8.*exp(-k.*t);
y5 = 10.*exp(-k.*t);
plot(t,y1,'-')
hold on
plot(t,y2,'-.')
hold on
plot(t,y3,'-')
hold on
plot(t,y4,'.')
hold on
plot(t,y5,'s','markersize',2)
##plot(t,y1,'r','linewidth',2,t,y2,'linewidth',2)
xlabel('Time');
ylabel('Amount of radio active substandce');