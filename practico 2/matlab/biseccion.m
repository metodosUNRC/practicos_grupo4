clear all
format long

%ingreso de las variables a utilizar
a=input('ingrese el valor inferior del intervalo: ');
b=input('ingrese el valor superior del intervalo: ');
t=input('ingrese el valor de tolerancia: ');
k=input('ingrese el numero de iteraciones: ');
u=input('ingrese la funcion:  ','s');

c=0;   %condicion para contador
e(1)=abs(b-a); % guardamos el primer error

%convertimos la funcion a f(x)
f=inline(u);

%se valua la funcion en a y b, y se comprueba que f(a)*f(b)<0
if f(a)*f(b)<0
   while  abs(b-a)>t
       c=c+1;
       if k>=c % condicion del contador
           d=(a+b)/2;
           if f(a)*f(d)<0 % condicion para renombrar las variables
               b=d;
           else
               a=d;
           end
       else % condicion para la superacion de iteraciones
           disp('se supero el numero de iteraciones');
           j=0;
           break; %cortamos el while para que no siga las iteraciones
       end
       e(c+1)=abs(b-a); % guarmamos el error para graficarlo
   end
end
if j~=0
%demostracion por pantalla de variables 
disp('el vector del error es: ');
disp(e);

%grafica del error
figure
w=(1:c);
plot(w,e(w));

format short
disp('el numero de iteraciones es: ');
disp(c);
z=abs(b-a);
disp('el error cometido es: ');
disp(z);
disp('la aproximacion es: ');
disp(d);
end