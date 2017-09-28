//-----------------------------------------------------------------------------------------------
//                                    "Metodo de Newton-Raphson"
//
//Autores: Anelo Roman - Agustin Gonzalez                                               20/09/2017
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------
//PROGRAMA PARA ENCONTRAR LA RAIZ DE UNA FUNCION ATRAVES DEL METODO NEWTON-RAPHSON, LOS VALORES QUE
//LE PEDIRA INGRESAR SON LOS DE: VALOR INICIAL (a), NUMERO DE ITERACIONES (K) Y TOLERANCIA QUE SE 
//PERMITE (t).
//-------------------------------------------------------------------------------------------------

//BIBLIOTECAS A INCLUIR
#include <iostream>
#include <cmath>
#include <iomanip>
#include <Windows.h>
#include<stdlib.h>
#include<math.h>

using namespace std;

//FUNCION QUE UTILIZAMOS EN EL PROGRAMA
double f(double x)
{
	return (log(x*x)-0.7);     //COLOCAR LA FUNCION QUE QUIERE CALCULAR LA RAIZ

	system("pause");
}

//INGRESAR LA DERIVADA DE LA FUNCION ANTERIOR
double d(double x)
{
	return (2/x);     //COLOCAR LA FUNCION DERIVADA A LA QUE QUIERE CALCULAR LA RAIZ

	system("pause");
}

int main()
{
//DECLARACIONES DE LAS VARIABLES A UTILIZAR
int k;     // nº maximo de iteraciones 
double a;  // Valor inicial deseado
double t;  //valor del error permitido
	
//INGRESO DE LAS VARIABLES 
cout << "ingrese el valor inicial: " <<endl;
cin >>a;

cout <<"ingrese el error permitido: " <<endl;
cin >>t;

cout <<"ingrese el numero maximo de iteraciones: " <<endl;
cin>>k;	
cout<<"\n";  //ESTE SE UTILIZA PARA SEPARA LOS DATOS ENTRADA Y SALIDA

double m = f(a); // DECLARACION DE LA VARIABLE m
double n = d(a); // DECLARACION DE LA VARIABLE n
int c = 0;       // DECLARACION DE LA VARIABLE c para el contador
double h = 0;    // DECLARACION DE LA VARIABLE h (cero para poder entrar al while)
double b = a-m/n; //DECLARACION DE LA VARIABLE b
int j;            //CONDICION PARA CUANDO SE SUPERA LA CANTIDAD DE ITERACIONES
 
while (abs(a-h)>t)
{
    c++;
    if (k>c) // CONDICION PARA VER QUE NO SE SUPERE LA CANTIDAD DE ITERACIONES
    {
	if(d!=0) // CONDICION PARA QUE NO SEA CERO EL DENOMINADOR
    {
    	j=1;
		if (c!=1) // CONDICION NECESARIA PARA SALVEDAD DE PRIMER VUELTA
		{
		h=b;
		b=a-m/n;
		m=f(b);
		n=d(b);
		a=b;
		}
		else
		{
		h=a;
		b=a-m/n;
		m=f(b);
		n=d(b);
		a=b;
		}
	}
	else
	{
	cout<<"no se puede dividir por cero"<<endl;
	j=0;
	break; // CORTAMOS EL WHILE PARA QUE NO SIGA CON LAS ITERACIONES
	}
	}
	else 
	{
	cout<<"se supero el numero de intentos"<<endl;
	j=0;
	break;
	}
}

if (j!=0)
// DEMOSTRACION DE LAS VARIABLES
{
cout<<"el numero de iteraciones es: "<<endl;
cout<<c<<endl;
cout<<"el error cometido es: "<<endl;
cout<<abs(a-h)<<endl;
cout<<"la aproximacion es: "<<endl;
cout<<a<<endl;
}
}



