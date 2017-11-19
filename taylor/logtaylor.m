clear ll;
clc;
close all;

%%
x = 0:0.05:10;
y = log(x);

figure();
plot(x, y, 'b-', 'LineWidth', 2.0);
grid on;


%%
syms z;
f(z)=taylor(log(z),z,'ExpansionPoint', 2, 'Order', 100);
yest = f(x);

hold on;
plot(x, yest, 'm.')

%%
legend('log', 'symbolic taylor expasion');
