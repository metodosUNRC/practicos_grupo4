clear all
format long

%ingreso de las variables a utilizar
a=input('ingrese un valor minimo: ');
b=input('ingrese el valor maximo: ');
t=input('ingrese el valor de tolerancia: ');
u=input('ingrese la funcion f:   ', 's');

c=0;
e(1)=abs(a-b); %Guardamos el primer error

%Definicion de la funcion de variable x
f=inline(u);

%condicion para saber si los dos valores introducidos son mayores a la tolerancia
while abs(a-b)>t
    if f(b)-f(a)~=0  %Condicion para comprobar si la resta f(b) y f(a) son distintas a cero
        s=b-(((b-a)*f(b))/(f(b)-f(a)));
        a=b;
        b=s;
    else
        disp('no se puede dividir por cero');
        j=0;
        break;  %Cortamos el while para que no siga iterando el programa
    end
    c=c+1;
    e(c+1)=abs(a-b); %Guardamos el error para poder graficarlo
end
%Procedimiento a realizar en caso de encontrar solucion
if j~=0
    disp('el vector del error es: ');
    disp(e);
    
    %Grafica del error
    figure
    w=(1:c);
    plot(w,e(w));
    format short
    
    disp('el numero de iteraciones es: ');
    disp(c);
    z=abs(a-b);
    disp('el error cometido es: ');
    disp(z);
    disp('la aproximacion es: ');
    disp(a);
end