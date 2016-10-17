function e=relError(A,AK)
  A = double(A);
  AK = double(AK);
  e = norm(A-AK)/norm(A);