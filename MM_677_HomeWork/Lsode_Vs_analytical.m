clear all; clc;
function dydt = f(y,t)
  dydt = -y;
end

t = linspace(0,10,100)
y = lsode("f",2,t); % 2 = intitial value i.e, at t=0--> y = 2
plot(t,y);
hold on;
plot(t,2*exp(-t),'ro','Markersize',2);