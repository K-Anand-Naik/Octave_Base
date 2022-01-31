clear all; clc;

function rdash = f(r,t)
  rdash=-1;
end

to = 0;
ro = 1;
t_final = 4;
h = 0.01;
t = [to:h:t_final];
#t=linspace(to,t_final,100)
r=lsode("f",ro,t);
plot(t,r)