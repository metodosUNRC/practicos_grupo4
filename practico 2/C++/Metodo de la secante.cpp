//-----------------------------------------------------------------------------------------------
//                                    "Metodo de la secante"
//
//Autores: Anelo Roman - Agustin Gonzalez                                               17/09/2017
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------
//PROGRAMA PARA ENCONTRAR LA RAIZ DE UNA FUNCION ATRAVES DEL METODO DE LA SECANTE, CUYA FUNCION
// DEBE SER ASIGNADA RESPECTO A LA VARIABLE "X" LOS VALORES QUE LE PEDIRA INGRESAR SON LOS DE: 
//VALOR INICIAL (a), VALOR FINAL (b), TOLERANCIA QUE SE PERMITE (t) E ITERACIONES MAXIMAS (k).
//-------------------------------------------------------------------------------------------------

//BIBLIOTECAS A INCLUIR
#include <iostream>
#include <cmath>
#include <iomanip>
#include <Windows.h>
#include<stdlib.h>
#include<math.h>

using namespace std;

//DEFINIMOS UNA FUNCION DE VARIABLE X
double f(double x)
{
	return (log(x*x)-0.7);     //COLOCAR LA FUNCION QUE QUIERE CALCULAR LA RAIZ

	system("pause");
}

int main()
{
	
//DECLARACIONES DE LAS VARIABLES A UTILIZAR

int k; // nº maximo de iteraciones 
double a; //Valor minimo del intervalo
double b; //Valor maximo del intervalo
double t; //Valor del error permitido
	
//INGRESO DE LAS VARIABLES

cout << "ingrese el valor minimo del intervalo: " <<endl;
cin >>a;

cout <<"ingrese el valor valor maximo del intervalo: " <<endl;
cin >>b;

cout <<"ingrese el error permitido: " <<endl;
cin >>t;

cout <<"ingrese el numero maximo de iteraciones: " <<endl;
cin>>k;	
cout<<"\n";  //ESTE SE UTILIZA PARA SEPARAR LOS DATOS ENTRADA Y SALIDA

int c = 0;  //DEFINICION DE CONSTANTE PARA EL CONTADOR
double s = b-(((b-a)*f(b))/(f(b)-f(a)));
int j;  //CONDICION PARA CUANDO SE SUPERA LAS ITERACIONES

// COMIENZO DEL PROGRAMA

while (abs(a-b)>t)    // CONDICION PARA SABER SI LOS DOS VALORES INTRODUCIDOS SON MAYORES A LA
                      //TOLERANCIA
{
c++;
if (k>c)    // CONDICION PARA VER SI NO SE SUPERA EL NUMERO DE ITERACIONES
{
	if (f(b)-f(a)!=0)   //CONDICION PARA COMPROBAR SI LA RESTA f(b) y f(a) SON DISTINTAS A CERO
    {
        s=b-(((b-a)*f(b))/(f(b)-f(a)));
        a=b;
        b=s;
        j=1;
    }
    else
    {
        cout<<"no se puede dividir por cero"<<endl; 
        j=0;
        break;
}
}
else
 {
 cout<<"error el intervalo no cumple la condicion inicial del metodo"<<endl;
 }
}

// PROCEDIMIENTO A REALIZAR EN CASO DE ENCONTRAR RESOLUCION

if (j!=0)
{
cout<<"el numero de iteraciones es: "<<endl;
cout<<c<<endl;
cout<<"el error cometido es: "<<endl;
cout<<abs(a-b)<<endl;
cout<<"la aproximacion es: "<<endl;
cout<<a<<endl;
}
}
