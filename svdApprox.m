function AK=svdApprox(A,k)
  
  A = double(A);
  
  if k>rank(A)
    disp("The rank of A is lower than k");
    return
  end
  
  [U,S,V] = svd(A); 
  AK = zeros(size(A));
  
  for j=1:(k)
    AK = AK + S(j,j)*U(:,j)*V(:,j)';
  end
  
  AK = uint8(AK); #If AK is double the image isnt saved correctly
