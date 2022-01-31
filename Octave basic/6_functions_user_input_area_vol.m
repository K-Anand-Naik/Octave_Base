function [A V] = fn_cal_area_vol(r)
  A = area(r);
  V = (4/3)*pi*r^3;
end