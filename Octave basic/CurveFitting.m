% x and y are from Excel file in MM677 folder

plot(x,y,'o')
grid on
%linear curve (x,y,1)
a = polyfit(x,y,1) % which gives a(1) slop = 0.6753; a(2) intercept = -38.6603

x1=linspace(min(x),max(x))
y1=a(1)*x1+a(2) %we create a line with the slope of given data curve to fit it
plot(x,y,'o',x1,y1,'r-')

% For predicting the weight of unknown like 170 Kg wt person
polyval(a,170)