global STEPS = 1000;

function N = norma_matricial (A)
  global STEPS;
  N = 0;
  for i=1:STEPS
    x = rand;
    n = rand;
    y = sqrt(abs(n-x));
    v = [x;y];
    N = max(N, norm(A*v)/norm(v));
  end
end