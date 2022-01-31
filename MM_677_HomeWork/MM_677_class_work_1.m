clear all;
t = 0:0.1:10;
k = 1.0;
y1 = .*exp(-k.*t);
k = 0.5;
y2 = 6.*exp(-k.*t);
k = 1.5;
plot(t,y1,'r','linewidth',2,t,y2,'linewidth',2)
xlabel('Time');
ylabel('Amount of radio active substandce');