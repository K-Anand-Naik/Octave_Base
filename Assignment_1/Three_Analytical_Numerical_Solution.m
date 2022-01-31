clear all; clc; close all;
function dpdt = f(p,t)
  dpdt = 2.09465*10.^-2*p;
end

t = linspace(0,220);
p = lsode("f",5.3,t);
plot(t,p)
hold on
plot(t,5.3*exp(2.09465*10.^-2*t),'ro','Markersize',2)
hold on

x = [30,60,90,120,150,180,220];
y = [5.3,13,31,63,106,150,230];
plot(x,y)