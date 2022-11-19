%functions to solve Hills equation
function He = Hills3(M)
%initialising constants
lambda = 0.001;
n = 2;
Mo = 10;
%Hills equation
He = ((lambda*(M^n))+(Mo^n))/((M^n)+(Mo^n));



