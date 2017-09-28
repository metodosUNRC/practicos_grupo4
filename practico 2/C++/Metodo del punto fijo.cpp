//-----------------------------------------------------------------------------------------------
//                                    "Metodo de Punto Fijo"
//
//Autores: Anelo Roman - Agustin Gonzalez                                               20/09/2017
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------
//PROGRAMA PARA ENCONTRAR LA RAIZ DE UNA FUNCION ATRAVES DEL METODO DEL PUNTO FIJO,LOS VALORES QUE 
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

//FUNCION QUE UTILIZAMOS EN EL PROGRAMA (SOLO PARA QUE CORCUERDE CON LO REALIAZADO A POSTERIOR)

double f(double x)
{
	return (log(x*x)-0.7);     //COLOCAR LA FUNCION QUE QUIERE CALCULAR LA RAIZ

	system("pause");
}

//ES IMPORTANTE TENER EN CUENTA QUE SE DEBE DESPEJAR LA FUNCION TANTAS VECES COMO GRADOS QUE POSEA

//INGRESAR LA FUNCION DESPEJADA DE UNA FORMA
double g(double x)
{
	return (1.41907);     //COLOCAR LA FUNCION

	system("pause");
}


int main()
{
	
//DECLARACIONES DE LAS VARIABLES A UTILIZAR
int k; // nº maximo de iteraciones 
double a; // Valor inicial deseado
double t; //Valor del error permitido

//INGRESO DE LAS VARIABLES 
cout << "ingrese el valor inicial: " <<endl;
cin >>a;

cout <<"ingrese el error permitido: " <<endl;
cin >>t;

cout <<"ingrese el numero maximo de iteraciones: " <<endl;
cin>>k;	
cout<<"\n";  //ESTE SE UTILIZA PARA SEPARA LOS DATOS ENTRADA Y SALIDA

double m = g(a); //DECLARACION DE UNA FUNCION
double h;  //DECLARACION DE UNA VARIABLE
int c = 0; //DEFINICION DE CONSTANTE PARA EL CONTADOR
double b;  //DECLARACION DE UNA VARIABLE
int j;  //CONDICION PARA CUANDO SE SUPERA LAS ITERACIONES

while (abs(m-h)>t)   // CONDICION PARA SABER SI LOS DOS VALORES INTRODUCIDOS SON MAYORES A LA 
                     //TOLERANCIA
{
	c++;
	if (k>c)  // CONDICION PARA VER SI NO SE SUPERA EL NUMERO DE ITERACIONES
	{
	h=m;
	b=g(h);
	m=g(b);
	j=1;
	}
	else
	{
	cout<<"se supero el numero de iteraciones"<<endl;
	j=0;
	break;
	}
}
// PROCEDIMIENTO A REALIZAR EN CASO DE ENCONTRAR RESOLUCION
if (j!=0)
{
cout<<"el numero de iteraciones es: "<<endl;
cout<<c<<endl;
cout<<"el error cometido es: "<<endl;
cout<<abs(m-h)<<endl;
cout<<"la aproximacion es: "<<endl;
cout<<m<<endl;
}

}
