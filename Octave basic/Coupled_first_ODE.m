clear all;
clc;

function xdash=f(x,t)
  xdash(1)=x(2);
  xdash(2)=(5/2)*x(2)-(1/2)*x(1);
end

t0 = 0;
x0(1) = 4;
x0(2) = -1;
t_final = 3;
h = 0.01;

t = [t0:h:t_final];

x = lsode("f",x0,t);
##plot(t,x(:,1))
##hold on
##plot(t,x(:,2))
plot(t,x(:,1),t,x(:,2))