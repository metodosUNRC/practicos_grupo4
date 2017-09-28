clear all
format long

%Ingreso de las variables a utilizar
a=input('ingrese un valor: ');
t=input('ingrese el valor de tolerancia: ');
u=input('ingrese la funcion:  ', 's');

%Definicion de la funcion de variable x
f0=inline(u);

%Derivada de la funcion de variable x
d0=diff(sym(f0));

%Evalua la funcion en a
f=subs(f0,a);
%evalua la derivada en a
d=subs(d0,a);
c=0;
h=0;
b=a;
e(1)=abs(a-h);

%condicion para saber si los dos valores introducidos son mayores a la tolerancia
while abs(a-h)>t
    c=c+1;
    h=b;
    b=a-f/d;
    f=subs(f0,b);
    d=subs(d0,b);
    a=b;
    e(c+1)=abs(a-h);
end
disp('el vector del error es: ')
disp(e);

%Grafica de la funcion introducida
figure
w=(1:c);  %Determinacion del vector para graficar
plot(w,e(w));

format short
disp('el numero de iteraciones es: ');
disp(c);
z=abs(a-h);
disp('el error cometido es: ');
disp(z);
disp('la aproximacion es: ');
disp(a);

