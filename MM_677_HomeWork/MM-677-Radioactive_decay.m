

clear all; clc;

function ydash = f(x,y)
  ydash=-2*y;
end

xo = 0;
yo = 2;
x_final = 3;

[x,y] = ode45("f",[xo,x_final],yo)
plot(x,y)