clear all; clc;

function ydash = f(x,y)
  ydash=y*log(x)/x;
end

xo = 2;
yo = e;
x_final = 10;

[x,y] = ode45("f",[xo,x_final],yo)
plot(x,y)