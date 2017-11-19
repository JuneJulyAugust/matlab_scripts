
x = -10:0.1:10;
y = x;
[X,Y] = meshgrid(x);

% QuadraticFunc = ;
figure(randi(1000));
% F = exp(-(sqrt(X .^4  +(Y/ 10).^4)));
% surf(X,Y,F, 'EdgeColor','none');
% axis on;
% axis equal;
% xlabel('X')
% ylabel('Y')
% zlabel('Z')

F = (1- sqrt((X) .^ 2 + (Y) .^2)).^2;
surf(X,Y,F, 'EdgeColor','none');
axis on;
axis equal;
xlabel('X')
ylabel('Y')
zlabel('Z')
