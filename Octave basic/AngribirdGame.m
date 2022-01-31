theta = input("Enter the Theta value:"); %rad
v_o = input("Enter the initial velocity:");%m/s
g = input("Enter the Gravitational Constant:");%m/s^2

x_max = v_o^2*sin(2*theta)/g;

y_max = 0.5*(v_o*sin(theta))^2/g;

x = linspace(0,x_max,20);

y = tan(theta)*x-0.5*g*x.^2/(v_o*cos(theta))^2;

##plot(x,y,'*-') try upto this line not below


for i = 1:length(x)
  plot(x(1:i),y(1:i));
  hold on 
  plot(x(i),y(i),'*');
  set(gca,"linewidth",0.5,"fontsize",26)
  axis([0 x_max 0 y_max]) %from 0 to x_max and 0 to y_max
  grid on
  pause(0.09);
  
  if i ~= length(x)
    clf
  end
end