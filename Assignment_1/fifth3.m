% f(x) = x^2  (-pi pi)

clear all; close all; clc;clf;
x = -pi:0.001:pi;
sum = (pi.^2)/3;
N = 100;
for i = 1:N
  sum = sum + 4.*(((-1).^(i)).*cos(i.*x)./i.^2);
endfor
plot(x,sum)
grid on