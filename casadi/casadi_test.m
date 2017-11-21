function casadi_test()

addpath('~/casadi-matlabR2014b-v3.3.0')
import casadi.*
x = MX.sym('x', 2, 1);
y = MX.sym('y', 16, 1);
obs_cost = Function('obs_cost', {x, y}, {obstacle_cost(x,y)});
% C = CodeGenerator('gen.c');
% C.add(jac_exp);
opts = struct('main', true);
obs_cost.generate('gen2.c', opts);

end


function lo = obstacle_cost(x, y)
lo = 0;
o_dim = 4;
co = 3.0;
ego_radius = 1.0;

for j=1:(size(y,1)/o_dim) % loop over obstacles
    idy = (j-1)*o_dim+(1:o_dim);
    idx = [1:2];
    r = y(idy(3)); % obstacle radius
    w = y(idy(4));   % obstacle weight (probability)
    lo = lo + co*w*sum(exp(-signed_dist(x(idx),y(idy(1:2)),ego_radius,r)));
end

end

function d = signed_dist(x1,x2,r1,r2)
    d1 = (x1(1)-x2(1)/r1);
    d2 = (x1(2)-x2(2)/r2);
    d = sqrt(d1*d1*d1*d1 + d2*d2*d2*d2); 
end