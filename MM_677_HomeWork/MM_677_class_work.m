clear all;
t = 0:0.1:10;
k = 2.0;
y = 2.*exp(-k.*t);
plot(t,y,'linewidth',2)
xlabel('Time');
ylabel('Amount of radio active substandce');