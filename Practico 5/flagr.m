%----------------------------- MÉTODOS NUMÉRICOS --------------------------
%
%                                   "FLAGR"
%
% Autores: Anelo Román, Gonzalez Agustin                         03/11/2017
%--------------------------------------------------------------------------
%Programa que realiza y evalua el polinomio interpolador para un 
%determinado conjunto de puntos.
%Datos a ingresar x(en forma de vector),y(en forma de vector),xm,min.
%--------------------------------------------------------------------------
function [l]=flagr(x,y,xm,min)
d=length(x)-min;

%Se asigna cero como valor inical de l para la suma.
l=0;

%Se calculan los factores de Lagrange.
for j=1:min+d
    p=1;
    for i=1:min+d
        if j~=i
        p=p*((xm-x(i))/(x(j)-x(i)));
        end
    end
    
    %Se suma cada término y se multiplica el p.
    l=(y(j)*p)+l;
end
        

            
