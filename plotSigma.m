function plotSigma(A,k)
  if k>rank(A)
    disp("The rank of A is lower than k");
    return
  end
  A = double(A);
  [U,S,V] = svd(A);
  
  s = diag(S);
  x = linspace(1,256,256);
  graphics_toolkit("gnuplot")
  figure(1);
  plot(x,s(1:k));
  title("Value of sigmas");
  xlabel("index j");
  ylabel("value of sigma_j");
  saveas(1,"sigmas.png");
  