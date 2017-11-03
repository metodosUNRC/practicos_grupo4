%----------------------------- M�TODOS NUM�RICOS --------------------------
%
%                         "Interpolador de Lagrange"
%
% Autores:Anelo Rom�n, Gonzalez Agustin                          03/11/2017
%--------------------------------------------------------------------------
%DESCRIPCI�N: Este programa, pide al usuario, el ingreso de un conjunto de
%pares de puntos(x,y), escritos en forma de dos vectores, x e y.
%Tambi�n, solicita al usuario el ingreso de un valor que ser� el argumento
%de la interpolaci�n, xm, el ingreso de la posici�n del par de puntos a 
%partir del cual se quiere realizar la interpolaci�n, min.
%Luego, llama a la funci�n FLAGR, para el c�lculo del polinomio de 
%interpolaci�n apropiado y encuentra el valor de interpolaci�n ym(xm).
%Por �ltimo se muestra dicho valor.
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
clear all % borra las variables anteriores.

%Ingreso de los valores.
x=input('ingrese los valores de x en vector: ');
y=input('ingrese los valores de y en vector: ');
xm=input('ingrese el valor del argumento de interpolacion: ');
min=input('Ingrese la posici�n del par de puntos a partir del cual se quiere realizar la interpolaci�n min: ');

%Se llama a la funci�n FLAGR.
l=flagr(x,y,xm,min);

%Se muestra el resultado.
disp('el valor de la interpolacion es: '); 
disp(l);