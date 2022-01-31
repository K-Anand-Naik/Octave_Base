clear all; clc;

function ydash = f(y,x)
  ydash=y*log(x)/x;
end

xo = 2;
yo = e;
x_final = 10;
%h = 0.01;
%x = [xo:h:x_final];
x=linspace(xo,x_final,100)
y=lsode("f",yo,x);
plot(x,y)