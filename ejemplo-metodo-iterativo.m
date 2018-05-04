STEPS = 1000000;
i = 1;
e = 1;

A = [6 2 -1; 1 -7 1; 1 1 -8]
b = [1;0;1]

D = diag(diag(A))
U = triu(A,1)
L = tril(A,-1)

x = [1;1;1]

while (i < STEPS && e> 1e-10)
  x0 = x
  x = -(D^-1)*(L+U)+(D^-1)*b;
  e = norm(x-x0);
  i = i+1;
end

printf ("Jacobi: %d\n", i);