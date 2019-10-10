X = input('Vector X: ')
Y = input('Vector Y: ')

% X = [1:10];
% Y = [2.3:3.23:32];

n = length(X);
X2 = X.^2;
XY = X.*Y;

a0 = (sum(Y)*sum(X2)-sum(X)*sum(XY))/(n*sum(X2)-sum(X)^2)
a1 = (n*sum(XY)-sum(Y)*sum(X))/(n*sum(X2)-sum(X)^2)

