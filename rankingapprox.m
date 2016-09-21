function x=rankingapprox(A,delta,m=0.15)
  n = size(A,2); %Finds the number of columns
  S = ones(n,n);
  M = (1-m).*A + (m/n).*S;
  
  x = (1/n).*ones(n,1); %Begins with a guess of x0
  x = (1/(sum(x))).*x; %Makes the sum of elements = 1
  
  x_old = x;
  x = M*x;
  
  while(max(abs(x-x_old)) > delta) 
    x_old = x; %Saves the old x
    x = M*x; %Updates x
  end;
  