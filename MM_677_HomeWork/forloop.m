%Decay problem variation of K and A
clear all;
clc;
t = 0:0.1:10;
for i = 1:5
  plot(t,i*exp(-1.*t));
  hold on
end
xlabel('Time,t')
ylabel('Amount to be decayed, grm')