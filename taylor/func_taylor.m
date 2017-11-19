function func_taylor(func)
clear ll;
clc;
close all;

%%
x = 0:0.05:4;
y = func(x);

figure();
plot(x, y, 'b-', 'LineWidth', 2.0);
grid on;


%%
syms z;
f(z)=taylor(func(z),z,'ExpansionPoint', 1, 'Order', 200);
yest = f(x);

hold on;
plot(x, yest, 'm*')

%%
legend('log', 'symbolic taylor expasion');

