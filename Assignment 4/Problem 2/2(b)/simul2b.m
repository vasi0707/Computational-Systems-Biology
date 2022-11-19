%function to construct odes
function genes = simul2b(t,y)
%initialising constants
g = 50;
k = 0.05;
%odes
genes(1) = g*Hills2(y(4)) - k*y(1);
genes(2) = g*Hills2(y(1)) - k*y(2);
genes(3) = g*Hills2(y(2)) - k*y(3);
genes(4) = g*Hills2(y(3)) - k*y(4);
%making odes as column vectors
genes = genes(:);

