function x=rankingapprox(A,delta,m=0.15)
  n = size(A)(2);
  S = ones(n,n);
  M = (1-m).*A + (m/n).*S;
  
  x = (m/n).*ones(n,1);
  x = (1./(sum(x))).*x;
  
  x_old = x;
  x = M*x;
  
  while(max(abs(x-x_old)) > delta)
    x_old = x;
    x = M*x;
  end;
  
endfunction;