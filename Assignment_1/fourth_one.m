x(1)=-2;
y(1)=6;
dx=0.1;
for i=2:1001
  x(i) = x(i-1)+dx;
  y(i) = x(i-1)*dx+y(i-1);
endfor
plot(x,y,'--')
xlabel('X')
ylabel('Y')
hold on
ya=(0.5.*(x.^2))+4;
plot(x,ya,'--',"linewidth",3)
legend('Numerical solution','Analytical solution')
for j=1:1001
  s=0;
  d(j)=(ya(j)-y(j));
  s=s+d(j)^2;
  #s=s+(ya(j)-y(i))^2;
endfor
error=sqrt(s)/1001;
printf("Error between analytical and numerical solution is %f",error)
function zdot=f(z,k)
  zdot=k
endfunction
w=lsode("f",6,(k=linspace(-2,100,1000)'));
plot(k,w)