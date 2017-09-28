clear all

% programa para graficar funciones y encontrar raizes aproximadas

%ingrese el valor del intervalo
a=input('ingrese el valor minimo del intervalo: ');
b=input('ingrese el valor maximo del intervalo: ');
%ingrese una funcion deseada de variable x punto a punto(sin colocar este
%ultimo en las sumas o restas)
u=input('ingrese la funcion de variable x: ','s');

%hacemos la funcion dependiente de x
f=inline(u);

x=a:0.1:b;
z=zeros(size(x));
plot(x,f(x));
hold on
plot(x,z,'r');
