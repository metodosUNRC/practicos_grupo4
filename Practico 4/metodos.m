%----------------------Programa de simpson trapecio-----------------------------
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
disp('si decea usar metodo trapecio simple, presione 1');
disp('si decea usar metodo trapecio compuesto, presione 2');
disp('si desea usar el metodo simpson 1/3 simple, presione 3');
disp('si desea usar el metodo simpson 1/3 compuesto, presione 4');
disp('si desea usar el metodo simpson 3/8 simple, presione 5');
disp('si desea usar el metodo simpson 3/8 compuesto, presione 6');

t=input('ingrese el metodo deseado: ');

if t==1
    %En caso de seleccionar el metodo simple, realizara las siguientes
    %operaciones.
    
   h=(b-a)/2;
   fa=f(a);
   fb=f(b);
   
   %Por ultimo realizo la siguiente operacion para encontrar el valor buscado
   I=(h)*(fa+fb);
   
   %Muestro los resultados obtenidos.
   disp('El valor aproximado de la integral es: ');
   disp(I);
elseif t==2
     
    %Si selecciono el metodo compuesto, comienza a realizar las siguientes
    %operaciones.
    
    n=input('ingrese la cantidad de divisiones: ');
    
    s1=0;
    h=(b-a)/n;
    fa=f(a);
    fb=f(b);
    
    %Aqui genero un vector que solo tiene como valores las divisiones que deseo
    %realizar sin tomar el primer y ultimo valor.
    
    for i=1:(n-1)
    x(i)=a+i*h;
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
elseif t==3
    
    %En caso de seleccionar el metodo simple, realizara las siguientes
    %operaciones.
    
    h=(b-a)/2;
    fa=f(a);
    fb=f(b);
    fc=4*f(a+h);
    
    %Por ultimo realizo la siguiente operacion para encontrar el valor buscado
    i=(h/3)*(fa+fb+fc);
    
    %Muestro los resultados obtenidos.
    disp('El valor aproximado de la integral es: ');
    disp(i);
elseif t==4
    
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
elseif t==5
    
    %En caso de seleccionar el metodo simple, realizara las siguientes
    %operaciones.
    
    h=(b-a)/3;
    fa=f(a);
    fb=f(b);
    faux1=3*f(((2*a)+b)/3);
    faux2=3*f((a+(2*b))/3);
    
    %Por ultimo realizo la siguiente operacion para encontrar el valor buscado
    i=(3*h/8)*(fb+faux1+faux2+fa);
    
    %Muestro los resultados obtenidos.
    disp('El valor aproximado de la integral es: ');
    disp(i);
else
    %Si selecciono el metodo compuesto, comienza a realizar las siguientes
    %operaciones.
    
    n=input('ingrese la cantidad de divisiones: ');
    
    fa=f(a);
    fb=f(b);
    h=(b-a)/n;
    s1=0;
    s2=0;
    s3=0;
    
    %Aqui genero un vector que solo tiene como valores las divisiones que deseo
    %realizar sin tomar el primer y ultimo valor.
    
    for i=1:n-1
    x(i)=a+(i*h);
    end
    
    %Una vez encontrado el vector x anterior solo selecciono el valor 1 y luego
    %voy aumentando en un intervalo de 3 hasta n-1.
    
    for k=1:3:n-2
    s1=s1+f(x(k));
    end
    
    %Una vez encontrado el vector x anterior solo selecciono el valor 2 y luego
    %voy aumentando en un intervalo de 3 hasta n-2.
    
    for d=2:3:n-1
    s2=s2+f(x(d));
    end
    
    %Una vez encontrado el vector x anterior solo selecciono el valor 3 y luego
    %voy aumentando en un intervalo de 3 hasta n-3.
    
    for j=3:3:n-3
    s3=s3+f(x(j));
    end
    
    %Por ultimo realizo la siguiente operacion para encontrar el valor buscado
    i=(3*h/8)*(fa+(3*s1)+(3*s2)+(2*s3)+fb);
    
    %Muestro los resultados obtenidos.
    disp('El valor aproximado de la integral es: ');
    disp(i);
end