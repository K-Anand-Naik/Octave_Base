%f(x) = x^2   (0 2*pi)

clear all;clc;
x = 0:0.001:2*pi;
sum = (4*pi^2)/3;
N = 100;
for i = 1:N
  sum = sum + ((4.*cos(i.*x)./i.^2)-((4.*pi.*sin(i.*x))./i));
endfor
plot(x,sum)
grid on