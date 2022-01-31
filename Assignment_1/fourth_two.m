x(1)=0;
y(1)=1;
dx=0.1;
for i=2:101
  x(i) = x(i-1)+dx;
  y(i) = y(i-1)-(x(i-1)*y(i-1)*dx);
endfor
plot(x,y,'--')
xlabel('X')
ylabel('Y')
hold on
ya=exp((-1.*x.^2)/2);
plot(x,ya,'rs')
for j=1:101
  s=0;
  d(j)=(ya(j)-y(j));
  s=s+d(j)^2;
  #s=s+(ya(j)-y(i))^2;
endfor
error=sqrt(s)/101;
printf("Error between analytical and numerical solution is %f",error),disp(error)
function zdot=f(z,k)
  zdot=-k*z
endfunction
w=lsode("f",1,(k=linspace(0,10,100)'));
plot(k,w)
legend('Numerical solution','Analytical solution','lsode')
