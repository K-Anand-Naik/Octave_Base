clear all;clc;
t(1)=0;
y(1)=2.0;
dt=0.1;
for i = 2:101
  t(i)=t(i-1)+dt;
  y(i)=y(i-1)*(1-dt);
end
plot(t,y,t,2.*exp(-t),'rs','Markersize',3)
