%----------------------Programa de Gauss-Seidel----------------------------
%Autores: Anelo Roman - Gonzalez Agustin
%Fecha: 06/10/2017
%Este programa fue creado para encontrar las aproximaciones por medio del 
%metodo Gauss-Seidel.

clear all  %Para limpiar las variables viejas y poder ingresar nuevas

format long  %para cambiar a formato largo en matlab asi me expresa mas
             %decimales el programa.

%Colocar una matriz deseada, con la condicion de que la misma sea cuadrada
%porque sino el metodo no funciona.
A=input('ingrese una matriz deseada: ');
b=input('ingrese el lado derecho b: '); %ingresar lado derecho del sistema
e=input('ingrese la toleracia deseada: '); %Tolerancia para que trabaje el 
                                           %programa hasta encontrar el 
                                           %verdadero valor.
tic

[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

g=inv(A)*b;

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas
    D=eye(m,n);
    for t=1:n 
        D(t,t)=A(t,t); %Aca se genera una matriz solo de diagonal principal
                       %igual a la diagonal principal de A.
    end
P=(-1)*tril(A)+D;  %Genero una matriz diagonal inferior, sin los valores
                   %de la diagonal principal, con el signo invertido.

N=triu(A);   %Genero una matriz diagonal superior.
O=inv(N);

z(m,1)=0;
Q=(O*b);
W=(O*P);
x(1,1)=100;
k=0;
while abs(g(1,1)-x(1,1))>e %condicion para que el programa funcione.
    x=Q+W*z;
    z=x;
    k=k+1;
    error(k)=abs(g(1,1)-x(1,1));
end

%Demostracion de las variables
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
toc