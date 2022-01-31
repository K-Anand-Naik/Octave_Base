clear all , clear all

L = input('Enter the Length:');
x_min = 0;
x_max = L;
y_min = 0;
y_max = 2*L;
Nx = 100;
Ny = 100;

x = linspace(x_min,x_max,Nx);
y = linspace(y_min,y_max,Ny);

[X Y] = meshgrid(x,y);

T = 0;
N = input('Enter # terms in Laplace equn:');
for n = 1:2:N
  T = T + 1/n*exp(-n*pi*Y/L).*sin(n*pi*X/L);
end

T = 200/pi*T;
superFig = figure('Position',[480 480 480 480]);
contourf(X,Y,T);
##surf(X,Y,T);
set(gca,'linewidth',3,'fontsize',20)
xlabel('X')
ylabel('Y')