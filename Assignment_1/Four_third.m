function yn = Four_third(xo,yo,x_final,f,n)
  xo = input('Initial x: ');
  yo = input('Initial y: ');
  x_final = input('Final x: ');
  n = input('Step size: ');
  f = input('Differential Equation: ','s');
  F = inline(f);
  dx = (x_final - xo)/n;
  x(1) = xo;
  y(1) = yo;
  for i = 1:n
    x(i+1) = x(i)+dx;
    y(i+1) = y(i)+F(x(i),y(i))*dx;
  end
  plot(x,y)
  hold on
  plot(x,(x-1).^(-1),'b')
end 
hold on
function dydt = f(y,x)
  dydt = -y^2;
end

x = linspace(5,10,100)
y = lsode("f",0.25,x); % 2 = intitial value i.e, at t=0--> y = 2
plot(x,y);
 