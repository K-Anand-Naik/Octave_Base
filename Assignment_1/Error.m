clear all;clc;

x(1) = -2; y(1) = 6;
dt = 1;
for i= 2:11
  x(i) = x(i-1)+dt;
  y(i) = y(i-1)+dt.*(i-1);
end

plot(x,y,'bo-','Markersize',2,x,((x.^2)/2)+4,'r*-','Markersize',3);

for j = 1:11
  fprintf('for x=%8.4f y=%10.5f\n',x(j),y(j))
end
sum = 0;
for i = 2:10
  sum = sum + (y-((x.^2)/2)+4).^2;
end
sqrt(sum)