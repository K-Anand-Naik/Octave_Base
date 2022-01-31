clear all; clc;
function dydt = f(y,x)
  dydt = -y^2;
end

x = linspace(5,10,100)
y = lsode("f",0.25,x); % 2 = intitial value i.e, at t=0--> y = 2
plot(x,y);