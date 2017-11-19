function test()
A = [1, 2; 3, 4];
b = [1; 2];

x= factcholesky(A, b)
a=1
end

% R = chol(A) will ouput a upper triangle maxtrix by default
% A = R'*R

% if A is n*n
% Ax = b
% R'Rx = b
% y = R'\b
% x = R\y = R\(R'\b)

% if A is n*m
% A'Ax = A'b
% A'A = R'R
% R'Rx = A'b
% Rx = R'\A'b
% R = R\(R\A'b)
function [x] = factcholesky(A,b)
  tic
  R=chol(A'*A);
  w=R'\(A'*b);
  x=R\w;
  toc
  NormC=norm(A*x-b)
  K=cond(A'*A)
end
