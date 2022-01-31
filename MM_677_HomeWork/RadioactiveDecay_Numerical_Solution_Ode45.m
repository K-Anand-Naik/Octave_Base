clear all; clc;
function dydt = f(t,y)
  dydt = -y;
end

t = linspace(0,10,100);
[t,y] = ode45("f",t,2);
plot(t,y);
hold on;
plot(t,2*exp(-t),'ro','Markersize',2);