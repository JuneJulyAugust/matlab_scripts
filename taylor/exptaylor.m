clear ll;
clc;
close all;

%%
x = -2:0.1:10;
y = exp(x);

figure();
plot(x, y, 'b-', 'LineWidth', 2.0);
grid on;

%%
N = 10;
yest = 0;

for i = 0:N
  yest = yest + (x .^ i) / factorial(i);
end

hold on;
plot(x, yest, 'r-')


%%
syms z;
f(z)=taylor(exp(z),z,'ExpansionPoint',0,'Order', 20);
yest = f(x);

hold on;
plot(x, yest, 'm*')

%%
legend('exp', 'taylor expasion', 'symbolic taylor expasion');
