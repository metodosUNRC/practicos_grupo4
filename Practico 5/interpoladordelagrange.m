%----------------------------- MÉTODOS NUMÉRICOS --------------------------
%
%                         "Interpolador de Lagrange"
%
% Autores:Anelo Román, Gonzalez Agustin                          03/11/2017
%--------------------------------------------------------------------------
%DESCRIPCIÓN: Este programa, pide al usuario, el ingreso de un conjunto de
%pares de puntos(x,y), escritos en forma de dos vectores, x e y.
%También, solicita al usuario el ingreso de un valor que será el argumento
%de la interpolación, xm, el ingreso de la posición del par de puntos a 
%partir del cual se quiere realizar la interpolación, min.
%Luego, llama a la función FLAGR, para el cálculo del polinomio de 
%interpolación apropiado y encuentra el valor de interpolación ym(xm).
%Por último se muestra dicho valor.
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
clear all % borra las variables anteriores.

%Ingreso de los valores.
x=input('ingrese los valores de x en vector: ');
y=input('ingrese los valores de y en vector: ');
xm=input('ingrese el valor del argumento de interpolacion: ');
min=input('Ingrese la posición del par de puntos a partir del cual se quiere realizar la interpolación min: ');

%Se llama a la función FLAGR.
l=flagr(x,y,xm,min);

%Se muestra el resultado.
disp('el valor de la interpolacion es: '); 
disp(l);