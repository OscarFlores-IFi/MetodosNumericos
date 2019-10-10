% function Gauss 
fx = input('f(x) = ','s');
fy = input('f(y) = ','s');
fz = input('f(z) = ','s');
er = input('Error relativo deseado: ');

% fx = '(5-2*y-z)/3';
% fy = '(4-z-x)/2';
% fz = '(12-x)/3';
% er = .005;

x = 0;
y = 0;
z = 0;

M = zeros(100, 3);

x = eval(fx);
y = eval(fy);
z = eval(fz);

M(2,1) = x;
M(2,2) = y;
M(2,3) = z;

cont = 1;
while sum(abs(M(cont + 1,:)./M(cont,:) - 1)<er)~=3
    x = eval(fx);
    y = eval(fy);
    z = eval(fz);
    
    M(cont + 2,1) = x;
    M(cont + 2,2) = y;
    M(cont + 2,3) = z;
    
    cont = cont + 1;
end
M = M(1:cont+1,:);

disp('       x         y         z')
disp(M)







