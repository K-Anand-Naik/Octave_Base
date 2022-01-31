%Euler
x(1) = 0;
h = 0.09;
y(1) = 0;
for i = 2:101
   x(i) = x(i-1) + h;
   y(i) = y(i-1) + h.*(x(i-1)+y(i-1));
end
plot(x,y,'bo-','MarkerSize',2,x,(exp(x)-x-1),'r*-','MarkerSize',4);
hold on
%Modified Euler
for i = 2:101
   x(i) = x(i-1) + h;
   k1 = h.*(x(i-1)+y(i-1));
   k2 = h.*(x(i)+(y(i-1)+k1));
   y(i) = y(i-1) + (1/2).*(k1+k2);
end
plot(x,y,'ko','MarkerSize',4,x,(exp(x)-x-1),'r*-','MarkerSize',2);