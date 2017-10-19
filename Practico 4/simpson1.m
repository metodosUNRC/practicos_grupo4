%----------------------Programa de simpson 1/3-----------------------------
%Autores: Anelo Roman - Gonzalez Agustin
%Fecha: 19/10/2017
%Este programa fue creado para encontrar las aproximaciones por medio del 
%metodo Simpson 1/3.

clear all   %Para limpiar las variables viejas y poder ingresar nuevas

format short  %para cambiar a formato corto en matlab asi me expresa menos
              %decimales el programa.

%Colocar los valores de las incognitas a ingresar
a=input('ingrese el valor inferior por el que desea intregar: ');
b=input('ingrese el valor superior por el que desea intregar: ');
g=input('ingrese la funcion: ','s');
f=inline(g);

%Aqui se puede seleccionar entre el matodo de simpson 1/3 simple o el
%compuesto
disp('si desea usar el metodo simpson 1/3 simple, presione 1');
disp('si desea usar el metodo simpson 1/3 compuesto, presione 2');
t=input('ingrese al metodo deseado: ');

if t==2
%Si selecciono el metodo compuesto, comienza a realizar las siguientes
%operaciones.
n=input('ingrese la cantidad de divisiones: ');
fa=f(a);
fb=f(b);
h=(b-a)/n;
s1=0;
s2=0;

%Aqui genero un vector que solo tiene como valores las divisiones que deseo
%realizar sin tomar el primer y ultimo valor.
for i=1:n-1
    x(i)=a+(i*h);
end
%Una vez encontrado el vector x anterior solo selecciono los valores 
%impares y hago una sumatoria 
for j=1:2:n-1
    s1=s1+f(x(j));
end
%Una vez encontrado el vector x anterior solo selecciono los valores 
%pares y hago una sumatoria 
for k=2:2:n-2
    s2=s2+f(x(k));
end
%Por ultimo realizo la siguiente operacion para encontrar el valor buscado
i=(h*(fa+4*s1+2*s2+fb))/3;

%Muestro los resultados obtenidos.
disp('El valor aproximado de la integral es: ');
disp(i);

else
%En caso de seleccionar el metodo simple, realizara las siguientes
%operaciones.
    h=(b-a)/2;
    fa=f(a);
    fb=f(b);
    fc=4*f(a+h);
    i=(h/3)*(fa+fb+fc);
    %Muestro los resultados obtenidos.
    disp('El valor aproximado de la integral es: ');
    disp(i);
end