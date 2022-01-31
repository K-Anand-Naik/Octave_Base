clear all; clc; close all;

x = -2:0.01:2;
y = exp(x);
fig = figure();
set(fig,'color','white')

plot(x,y,'linewidth',1)
xlabel("X")
ylabel("Y")
grid on

N = 1; % for the value 6 it matches perfectly
yestimate = 0*y;
for n = 0:N
  yestimate = yestimate + (x.^n)./factorial(n);
end
hold on
plot(x,yestimate,'r-.','linewidth',2)
legend('Actual Function','Taylor Series Expansion')