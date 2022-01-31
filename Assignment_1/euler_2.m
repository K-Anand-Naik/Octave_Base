function yn = euler_2(xo,yo,x_final,f,n)
  xo = input('Initial value of x: ');
  yo = input('Initial value of y: ');
  x_final = input('Final value of x: ');
  n = input('Steps btw xo and x_final: ');
  f = input('Enter the Differential Equation: ','s');
  F = inline(f);
  dx = (x_final - xo)/n;
  x(1) = xo;
  y(1) = yo;
  for i = 1:n
    x(i+1) = x(i)+dx;
    y(i+1) = y(i)+F(x(i),y(i))*dx;
  end
  yn = y(n+1);
  a = input('Enter the Analytical Solution: ','s');
  plot(x,y)
  hold on
  plot(t,a)