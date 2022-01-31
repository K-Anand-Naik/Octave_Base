clear all; clc;
x = -pi:0.001:pi;
sum = 0;
k = 1;
N = 100;
for j = 0:N
  p = 2*j+1;
  sum = sum .+ (4*k/pi)*(sin(p.*x)/p);
end
plot(x,sum) 