%-----------------------------PROGRAMA JACOBI-----------------------------
%Autores: Anelo Roman - Gonzalez Agustin
%Fecha:06/10/2017
%ESTE PROGRAMA FUE CREADO PARA ENCONTRAR LA APROXIMACIONES DE LAS VARIABLES  
%-------------------------------------------------------------------------

clear all % Para limpiar variables viejas

format long % para poder expresar los numeros sin redondeo

%ingreso de las variables necesarias para la aplicacion del metodo
A=input('ingrese una matriz deseada: ');
b=input('ingrese el lado derecho b: ');
e=input('ingrese la tolerancia deseada: ');

tic   % tiempo que tarde en realizar el programa.

[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

g=(inv(A))*b;

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas
    D=eye(m,n);
    for t=1:n
        D(t,t)=A(t,t); % Aca se genera una matriz solo de diagonal 
                       % principal igual a la diagonal principal de A 
        
        O=inv(D);      % con este comando realizamos A^(-1).
        
    end
L=((-1)*tril(A))+D; % Encontrams una matriz con los elementos debajo 
                    % de la diagonal distintos de cero.
                    
U=((-1)*triu(A))+D; % Encontrams una matriz con los elementos arriba
                    % de la diagonal distintos de cero.
                    
z(m,1)=0; % Nombramos un vector columna.

% Realizamos los calculo asi dentro del while no lo tenemos que calcular en
% cada interacion
P=(O*b); 
W=(O*(L+U));

x(1,1)=100; % Variable necesaria para entrar al while

k=0; % Definimos el contador

%comenzamos a realizar el programa
while abs(g(1,1)-x(1,1))>=e  % condicion para que corra el programa 
    x=P+W*z;
    z=x;
    k=k+1;
    error(k)=abs(g(1,1)-x(1,1)); % Guardamos en error para graficarlo
end

%Grafica del error
figure
w=(1:k);  %Determinacion del vector para graficar
plot(w,error(w));

% Demostracion de las variables

disp('la aproximación encontrada es');
disp(x);
disp('el numero de iteraciones es: ');
disp(k);

else % aviso que la matriz no es cuadrada
    disp('error la matriz no es cuadrada');
end
toc
