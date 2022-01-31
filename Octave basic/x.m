p=[1,-3,2,1]; % 1*x^3-3*x^2+2*x^1
x=0:0.01:1;
y_orig=polyval(p,x);
y_noise= y_orig+0.05*randn(size(y_orig));
figure
subplot(3,1,1)
scatter(x,y_orig)
grid minor
subplot(3,1,2)
scatter(x,y_noise)
subplot(3,1,3)