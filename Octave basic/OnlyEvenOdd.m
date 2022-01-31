x=1:5;

for i=1:length(x)
  
  if rem(x(i),2) == 1 %change 1 with 0 to get even numbers
    fprintf('%d \n',x(i));
##  else
##    fprintf('Is Odd nubmer\n');
  end
end