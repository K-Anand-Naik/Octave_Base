plot(x,y,'o')
grid on
%Quadratic curve (x,y,2)
a = polyfit(x,y,2) % which gives a2=5.5e-3 ; a1=-1.06e+00 ; ao=9.475e+01

x1=linspace(min(x),max(x))
y1=polyval(a,x1) %we create a line with the slope of given data curve to fit it
plot(x,y,'o',x1,y1,'r-')
polyval(a,170)