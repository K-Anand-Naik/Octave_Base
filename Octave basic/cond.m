s = input('Enter the marks of: ');
fprintf('Score = %d\n',score);
if s>=90;
  fprintf('Grade is : A\n');
elseif (s<90) && (s>=80) 
  fprintf('Grade is : B\n');
elseif (s<80) && (s>=70)
  fprintf('Grade is : C\n');
else (s<70) && (s>=60)
  fprintf('Grade is : F\n');

end
