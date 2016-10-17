function plotSigma(A,k)
  if k>rank(A)
    disp("The rank of A is lower than k");
    return
  end
  A = double(A);
  [U,S,V] = svd(A);
  
  s = diag(S);
  
  plot(s(1:k))
  
  