x=input('Ingresa tus Valores de X : ');
y=input('Ingresa tus Valores de Y : ');
interpolar=input('Ingresa el Valor a interpolar : ');

%%
n=length(x);
suma=0;
for i=1:n
    producto=1;
    for j=1:n
        if j~=i
            numerador=(interpolar-x(j));
            denominador=x(i)-x(j);
            producto=producto*(numerador/(denominador));  
        end 
    end 
    suma=suma+y(i)*producto;
end 
suma