y0=200;
v0=0;
g=-9.8;
t=0:.1:10;
 
%define the equations as anonymous functions
y_t= @(t) y0+.5*g*t.**2;
v_t= @(t) g*t;
 
%plot y(t)
subplot(1,2,1)
plot(t,y_t(t))
xlabel("t (sec)")
ylabel("y (m)")
box()
 
%plot v(t)
subplot(1,2,2)
plot(t,v_t(t))
xlabel("t (sec)")
ylabel("v (m/sec)")
box()
 
##%plot y(x) discretely
##subplot(1,3,3)
##plot(y_t(t)*0,y_t(t),"b.","markersize",15)
##xlabel("x(m)")
##ylabel("y(m)")
##box()