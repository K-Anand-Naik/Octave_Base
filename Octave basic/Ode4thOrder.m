clear all;
clc;

function xdash = f(t,x)
  xdash(1) = x(2);
  xdash(2) = x(3);
  xdash(3) = x(4);
  xdash(4) = -3*x(3)+sin(t)*x(2)-8*x(1)+t^2;
end

t0 = 0;

x0(1) = 1;
x0(2) = 2;
x0(3) = 3;
x0(4) = 4;

t_final = 3;

[t,x] = ode23("f",[t0,t_final],x0);

plot(t,x) % which a combination of below 4 lines and the last line is also same as this line
hold on
plot(t,x(:,1));
##plot(t,x(:,2));
##plot(t,x(:,3));
##plot(t,x(:,4));
##plot(t,x(:,1),t,x(:,2),t,x(:,3),t,x(:,4))