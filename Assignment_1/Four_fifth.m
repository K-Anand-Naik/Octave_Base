function yn = Four_fifth(xo,yo,x_final,f,n)
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
  plot(x,y)
  hold on
  plot(x,sqrt(4.-x.^2))