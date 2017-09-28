clear all
format long

%ingreso de las variables a utilizar
a=input('ingrese un valor: ');
t=input('ingrese el valor de tolerancia: ');
k=input('cantidad de iteraciones: ');
u=input('ingrese la funcion:  ', 's');
v=input('ingrese la funcion despejada: ','s');

%convertimos las funciones dependientes a x
f=inline(u);
g=inline(v);

%declaramos las condiciones necesarias para el programa
m=g(a);
h=0;
c=0;
j=0; 
e(1)=abs(m-h); %guardamos el primer error

% comenzamos el programa
while abs(m-h)>t
	c=c+1;
	if k>c %condicion para no superar las iteraciones ingresadas
	h=m;
	b=g(h); %renombramos la variable
	m=g(b); %renombramos la variable
	j=1;
    else %superacion de iteraciones
	disp('se supero el numero de iteraciones');
	j=0;
	break;% cortamos el programa para que no sigan las iteraciones
    end
    e(c+1)=abs(m-h); %guardamos el error para poder graficarlo
end
if j~=0
    %mostramos el vector error
    disp('el vector del error es: ');
    disp(e);
    
    %graficamos el error 
    figure
    w=(1:c);
    plot(w,e(w));
    format short

    %mostramos el valor de las variables
disp('el numero de iteraciones es: ');
disp(c);
disp('el error cometido es: ');
disp(abs(m-h));
disp('la aproximacion es: ');
disp(m);
end

