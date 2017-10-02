clear all

A=input('ingrese una matriz deseada: ');
b=input('ingrese el lado derecho b: ');
e=input('ingrese el numero de interaciones: ');

[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas
    D=eye(m,n);
    for t=1:n
        D(t,t)=A(t,t);
        O=inv(D);
    end
L=((-1)*tril(A))+D;
U=((-1)*triu(A))+D;

z(m,1)=0;
P=(O*b);
W=(O*(L+U));
k=1;
while e>=k
    x=P+W*z;
    z=x;
    k=k+1;
end
disp('la aproximación encontrada es');
disp(x);
else
    disp('error la matriz no es cuadrada');
end