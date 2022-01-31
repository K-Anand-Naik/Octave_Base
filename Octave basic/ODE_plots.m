superFig = figure('Position',[680 480 680 480])
tmin = 0;
tmax = 3;

tspan = [tmin tmax];
yo = 1;

[t,y] = ode45(@(t,y)myode(t,y),tspan,yo);

plot(t,y,'b.-','linewidth',1,'Markersize',5);
title('Radioactive Decay')
xlabel('Time,t')
ylabel('Ammount, y')
set(gca, 'linewidth', 1, 'fontsize', 20);
grid on

##t_exact = linspace(tmin,tmax);
##
##y_exact = exp(-2*t_exact);
##
##plot(t_exact,y_exact,'b:','linewidth',1,t,y,'ro','linewidth',1,'Markersize',5);
##set(gca,'linewidth',1,'fontsize',20);
##grid on;


