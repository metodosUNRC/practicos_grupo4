%----------------------Programa de simpson trapecio-----------------------------
%Autores: Anelo Roman - Gonzalez Agustin
%Fecha: 19/10/2017
%Este programa fue creado para encontrar las aproximaciones por medio del 
%metodo Simpson 1/3.

clear all   %Para limpiar las variables viejas y poder ingresar nuevas

format short  %para cambiar a formato corto en matlab asi me expresa menos
              %decimales el programa.

%Colocar los valores de las incognitas a ingresar
a=input('ingrese el valor superior de la integral: ');
b=input('ingrese el valor inferior de la integral: ');
g=input('ingrese la funcion: ','s');
f=inline(g);

%Aqui se puede seleccionar entre el matodo de simpson 1/3 simple o el
%compuesto
disp('si decea usar metodo trapecio simple, presione 1');
disp('si decea usar metodo trapecio compuesto, presione 2');
t=input('ingrese el metodo deseado: ');

if t==2
    %Si selecciono el metodo compuesto, comienza a realizar las siguientes
    %operaciones.
    
n=input('ingrese la cantidad de divisiones: ');

s1=0;
h=(a-b)/n;
fa=f(a);
fb=f(b);

%Aqui genero un vector que solo tiene como valores las divisiones que deseo
%realizar sin tomar el primer y ultimo valor.
for i=1:(n-1)
    x(i)=b+i*h;
end

%Una vez encontrado el vector x anterior solo selecciono los valores del
%mismo hasta n-1.
for j=1:n-1
    s1=s1+f(x(j));
end


%Por ultimo realizo la siguiente operacion para encontrar el valor buscado
I=(h/2)*(fa+fb+2*s1);

%Muestro los resultados obtenidos.
disp('El valor aproximado de la integral es: ');
disp(I);

else
    %En caso de seleccionar el metodo simple, realizara las siguientes
    %operaciones.
    
   h=(a-b)/2;
   fa=f(a);
   fb=f(b);
   
   %Por ultimo realizo la siguiente operacion para encontrar el valor buscado
   I=(h)*(fa+fb);
   
   %Muestro los resultados obtenidos.
   disp('El valor aproximado de la integral es: ');
   disp(I);
   
end