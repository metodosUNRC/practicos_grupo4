clear all

format long

A=input('ingrese una matriz deseada: ');
b=input('ingrese el lado derecho b: ');
e=input('ingrese el error deseado: ');

[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

g=inv(A)*b;

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas
    D=eye(m,n);
    for t=1:n
        D(t,t)=A(t,t);
    end
P=(-1)*tril(A)+D;
N=triu(A);
O=inv(N);

z(m,1)=0;
Q=(O*b);
W=(O*P);
x(1,1)=100;
k=0;
while abs(g(1,1)-x(1,1))>e
    x=Q+W*z;
    z=x;
    k=k+1;
    error(k)=abs(g(1,1)-x(1,1));
end
disp('la aproximación encontrada es');
disp(x);
disp('el numero de iteraciones es: ');
disp(k);

%Grafica del error
figure
w=(1:k);  %Determinacion del vector para graficar
plot(w,error(w));


else
    disp('error la matriz no es cuadrada');
end