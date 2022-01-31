clear all, clear all

pkg load signal

f = input('Enter the Frequency:');
duty = input('Enter Duty(a/b):');
t_min = 0;
t_max = 4*pi;
t = linspace(t_min,t_max,1000);
ft = square(f*t);
ft1 = 0.5*(ft+1);

superFig = figure('Position',[680 480 680 480]);
plot(t,ft,'linewidth',2,t,ft1,'linewidth',1,'r:');

xlabel('time, t')
ylabel('y = f(t)')

set(gca,'linewidth',1,'fontsize',20)
set(gca,'XTick',[0 pi 2*pi 3*pi 4*pi]);
set(gca,'XTickLabel',{'0','\pi','2\pi','3\pi','4\pi'});
axis([t_min t_max -2 2])
grid on