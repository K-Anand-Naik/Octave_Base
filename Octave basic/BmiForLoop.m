height = [1.78 1.85 1.73 1.68 1.81];
weight = [68 89 64 51 106];

for i = [1 2 3 4 5]
  BMI(i) = weight(i)/height(i)^2;
  
  if BMI(i) >= 30
    category = 'Obese';
  elseif (BMI(i)<30) && (BMI(i)>=25)
    category = 'Over weight';
  elseif (BMI(i)<25) && (BMI(i)>=18)
    category = 'Normal weight';
  else
    category = 'Under weight';
  end
  fprintf('%d %.2f %d %.1f %s\n',i,height(i),weight(i),BMI(i),category);
end