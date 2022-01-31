clear all;
clc;
t(1) = -2;
y(1) = 6;
dt = 0.1;
for i = 2:101
  t(i) = t(i-1)+dt;
  y(i) = y(i-1)*(1-dt);
end
plot(t,y,'r-.',t,(t^2)/2+4,'bo-.');