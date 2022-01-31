clear all;clc;close all;

function dpdh = f(p,h)
  dpdh = -3.209*10.^-6*p;
end

h = linspace(0,600000);

p = lsode("f",14.7,h);
plot(h,p,'b-')
hold on
plot(h,14.7.*(exp(-3.209*10.^-6*h)),'ro-','Markersize',2)

