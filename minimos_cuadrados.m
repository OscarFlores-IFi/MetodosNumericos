% X = input('Vector X: ')
% Y = input('Vector Y: ')
% g = input('Grado de la función deseada: ')

X = [.25,.75,1.25,1.5,2];
Y = [-.23,-.33,.7,1.88,6];
g = 5;

n = length(X);
A = zeros(1,2*g+1); % vector con a_g * x^g
B = zeros(1,g+1); % vector con y * x^g

A(1) = n;
for i=1:length(A)
    A(i+1) = sum(X.^i); % llenar el vector de a_g * x^g
end
for i=1:length(B)
    B(i) = sum(Y.*(X.^(i-1))); % llenar el vector de y * x^g
end


M = zeros(g+1,g+2); % Matriz aumentada
for i=1:g+1
    M(:,i) = A(i:i+g);
end
M(:,end) = B;


for i=1:length(M)-1 % Resolver matriz aumentada por Gauss-Jordan
    M(i,:) = M(i,:)./M(i,i);
    for j=1:length(M)-1
        if j ~= i
            M(j,:) = M(j,:)-M(i,:)*(M(j,i));
        end
    end
end


V = M(:,end) % Vector de solución
Yn = zeros(1,n); % Aproximación generada con vector de solución
for i=1:n
    for j=1:g+1
        Yn(i) = Yn(i)+V(j)*X(i)^(j-1); % Se llena Y_nueva
    end
end



St = sum((mean(Y)-Y).^2)
Sr = sum((Yn-Y).^2)
r = sqrt((St - Sr)/St)





X_dibujo = X(1):abs((X(end)-X(1))/100):X(end);
Y_dibujo = zeros(1,length(X_dibujo)); % Aproximación generada con vector de solución
for i=1:length(X_dibujo)
    for j=1:g+1
        Y_dibujo(i) = Y_dibujo(i)+V(j)*X_dibujo(i)^(j-1); % Se llena Y_dibujo
    end
end




plot(X,Y)
hold on
plot(X_dibujo,Y_dibujo)
legend('Y', 'Yn')