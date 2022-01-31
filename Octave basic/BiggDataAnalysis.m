A = [4 -3 2 -4;0 -5 10 2;3 2 -1 0];
[row col] = size(A);

N_positive = 0;
N_negative = 0;
N_zeros = 0;
for i = 1:row % 1 through row -- 1 to entire row
  for j = 1:col
    if A(i,j) > 0
      N_positive+=1;
    elseif A(i,j) < 0
      N_negative+=1;
    else
      N_zeros+=1;
    end
  end
end

A
fprintf('We have %d positive Numbers\n',N_positive);
fprintf('We have %d negative Numbers\n',N_negative);
fprintf('We have %d zeros\n',N_zeros);
