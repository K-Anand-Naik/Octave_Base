clear all; clc;

function rdash = f(t,r)
  rdash=-1;
end

to = 0;
ro = 1;
t_final = 4;

[t,r] = ode45("f",[to,t_final],ro)
plot(t,r)