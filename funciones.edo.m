global H = 0.01;

function y = fe(x)
  global H;
  n = length (x);
  y(1) = 1;
  for i=2:n
    y(i) = (1+H)*y(i-1);
  end
end

x = [0:H:1];
plot ( x, fe(x) )

function y = fi(x)
  global H;
  n = length (x);
  y (1) = 1;
  for i=2:n
    y(i) = y(i-1)/(1-H);
  end
end

x = [0:H:1];
plot ( x, fi(x) )

