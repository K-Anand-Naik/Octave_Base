score = input('Enter the Score(between 0 to 100): ');
fprintf('Score = %d\n',score);
if score >= 90
  fprintf('Grade: A\n');
elseif (score<90) && (score>=80)
  fprintf('Grade: B\n');
elseif (score<80) && (score>=70)
  fprintf('Grade: C\n');
else
  fprintf('Grade: F\n');

end