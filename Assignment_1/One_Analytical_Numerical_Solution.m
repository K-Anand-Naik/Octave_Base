clear all; clc; close all;

function dydt = f(y,t)
  dydt = -9.8*t;
end

t = linspace(0,10,100);
y = lsode("f",0,t);
plot(t,y,t,-(9.8*t.^2)/2,'ro','linewidth',1,'Markersize',2)
title('Displacement Vs Time')
xlabel('Time,sec')
ylabel('Displacement')
legend('Neumarical','Analytical')