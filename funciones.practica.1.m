function y = f(x)
  y = 1;
  for i=1:x
    y = y*i
  end
end

function a = m(x)
  n = length(x);
  a = x(1);
  for i=2:n
    if x(i)<a
      a = x(i);
    end
  end
end

function A = mat(n)
  for i=1:n
    for j=1:n
      if i==j
        A(i,j) = 1;
      else
        A(i,j) = 0;
      end
    end
  end
end

function y = g(x)
  y = 1;
  z = 0;
  i = 1;
  while not(y==z)
    z = y;
    y = y+x^i/f(i);
    i = i+1;
  end
end

%Ej9
% Recibe un vector y calcula su maximo
%-Ej10: Modificado para que tambien devuelva el primer indice en el que ocurre el maximo
function [m,j] = vmax(x)
  m = x(1);
  j = 1;
  for i=2:length(x)
    if (x(i)>m)
      m = x(i);
      j = i;
    end
  end
end

%Ej11
% Recibe una matriz y calcula su elemento maximo
function m = mmax (A)
  n = -Inf;
  m = -Inf;
  for i=1:length(A)
    n = vmax(A(i,:))
    m = max(m,n)
  end
end

%Ej adicional
% Sucesion de fibonacci
function r = fibo (n)
  if (n == 0 || n == 1)
    r = 1
  else
    r = fibo (n - 1) + fibo (n - 2)
  end
end