%-----------------------------PROGRAMA LU-----------------------------
%Autores: Anelo Roman - Gonzalez Agustin
%Fecha:06/10/2017
% ESTE PROGRAMA FUE CREADO PARA CONVERTIR UNA MATRIZ CUALQUIERA CUADRADA A 
% SU EQUIVALENTE L*U
%-------------------------------------------------------------------------

clear all

%Ingreso una matriz cuadrada porque sino nos es posible realizar la 
%factorizacion LU.
A=input('ingrese una matriz deseada: ');

tic % tiempo que tarde en realizar el programa.

[m,n]=size(A);%esta funcion me da la cantidad de filas y columnas que tengo

if m==n%condicion para saber si tenemos el mismo numero de columnas y filas

    for k=1:n 
    L(k,k)=1; %guarda el valor 1 a la diagonal principal
    for i=k+1:n
        L(i,k)=A(i,k)/A(k,k); %obtiene y guarda las componentes del L por 
                              %columna de la 1 a la n, y de fila 1 a n
        for j=k+1:n
            A(i,j)=A(i,j)-L(i,k)*A(k,j); % matriz de transicion para 
                                         % encontrar U
        end
    end
    for j=k:n
        U(k,j)=A(k,j); % a la matrix anterior la lleva a diagonal superior
                       % encontrando asi la matriz U
     end
    end

%demostracion de las matrices calculadas
disp('La matriz L es; ');
disp(L);
disp('La matriz U es: ');
disp(U);

else % aviso que la matriz no es cuadrada
   
    disp('error la matriz no es cuadrada');

end

toc