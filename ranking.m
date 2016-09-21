function x=ranking(A,m = 0.15)
  n = size(A,2);
  rows = size(A,1);
  
  if (rows != n) %Checks if the matrix is square
    disp("This matrix is not nxn")
    return
  end
  for k=1:(n) %Checks if the matrix is stocatic
    if (sum(A(:,k)) != 1)
      disp("This is not a stocatisk matrix");
      return
    end;
  end;
  S = ones(n,n);
  M = (1-m).*A + (m/n).*S; %Makes the google matrix
  
  x = null(M - eye(n)); %Finds the basis of the null space
  
  s = sum(x);
  
  x = (1./s).*x; %Makes the sum of the elements = 1
  