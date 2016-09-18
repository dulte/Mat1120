function x=ranking(A,m = 0.15)
  n = size(A)(2);
  for k=1:(n)
    if (sum(A(:,k)) != 1)
      print("This is not a stocatisk matrix");
    end;
  end;
  S = ones(n,n);
  M = (1-m).*A + (m/n).*S;
  
  nu = null(M - eye(n));
  
  s = sum(nu);
  
  x = (1./s).*nu;

endfunction;