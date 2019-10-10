% X = [1 2 3 4 5 6 7 8 9 10]
% Y = [1 2 3 5 7 11 13 17 19 23]
% x = 7.8;
X = input('X: ');
Y = input('Y: ');
x = input('valor a interpolar: ');
n = length(X);

xx = x*ones(1,n);
f_x = 0;
for i=1:n
    f_x = f_x + Y(i)*prod(xx(X~=X(i))-X(X~=X(i)))/prod(X(i)*ones(1,n-1)-X(X~=X(i)));
end
disp(f_x)
