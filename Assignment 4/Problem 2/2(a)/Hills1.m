%function to calculate Hills equation
function He = Hills1(M)
%initialising constants
lambda = 0.001;
n = 2;
Mo = 10;
%Hills equation
He = ((lambda*(M^n))+(Mo^n))/((M^n)+(Mo^n));



