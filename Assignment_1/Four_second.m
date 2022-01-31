function yn = Four_second(xo,yo,x_final,f,n)
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
  %yn = y(n+1);
  plot(x,y)
  hold on
  plot(x,exp(-(x.^2)/2))