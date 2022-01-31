clear all; clc;

function ydash = f(y,x)
  for i = 2:8
    ydash=-2*y^i;
  end
end

xo = 2;
yo = e;
x_final = 10;
%h = 0.01;
%x = [xo:h:x_final];
x=linspace(xo,x_final,100)
y=lsode("f",yo,x);
plot(x,y)