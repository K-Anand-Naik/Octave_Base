%f(x) = x (-pi pi)

clear all; close all; clc;
x = -pi:0.001:pi;
sum = 0;
N = 100;
for i = 1:N
  sum = sum + ((2.*(-1).^(i.+1)).*sin(i.*x))./i;
endfor
plot(x,sum)
grid on