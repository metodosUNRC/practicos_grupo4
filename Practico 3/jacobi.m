clear all

A=input('ingrese una matriz deseada: ');
%b=input('ingrese el lado derecho b: ');
[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas
    D=eye(m,n);
    for t=1:n
        D(t,t)=A(t,t);
    end
L=((-1)*tril(A))+D;
U=((-1)*triu(A))+D;

%x(1,n)=((D^(-1))*b)
else
    disp('error la matriz no es cuadrada');
end