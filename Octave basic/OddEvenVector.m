x=1:5;

for i=1:length(x)
  
  if rem(x(i),2) == 0
    fprintf('Is Even nubmer\n');
  else
    fprintf('Is Odd nubmer\n');
  end
end