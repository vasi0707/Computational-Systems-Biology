%function to construct odes
function genes = simul2a(t,y)
%initialising constants
g = 50;
k = 0.05;
%odes
genes(1) = g*Hills1(y(3)) - k*y(1);
genes(2) = g*Hills1(y(1)) - k*y(2);
genes(3) = g*Hills1(y(2)) - k*y(3);
%making odes as column vectors
genes = genes(:);

