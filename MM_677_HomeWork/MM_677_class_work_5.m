clear all;clc;
##k = 1;
k = 3;
x = -pi:0.001:pi;
sum = 0;
N = 1000;
for j = 0:N
  p = 2*j+1;
  sum = sum.+(4*k/pi)*(sin(p.*x)/p);
end
plot(x,sum)