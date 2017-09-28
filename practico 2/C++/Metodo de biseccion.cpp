//-----------------------------------------------------------------------------------------------
//                                      "Metodo de Biseccion"
//
//Autores: Anelo Roman - Agustin Gonzalez                                               17/09/2017
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------
//PROGRAMA PARA ENCONTRAR LA RAIZ DE UNA FUNCION ATRAVES DEL METODO DE LA BISECCION, CUYA FUNCION
// DEBE SER ASIGNADA RESPECTO A LA VARIABLE "X" LOS VALORES QUE LE PEDIRA INGRESAR SON LOS DE: 
//VALOR INICIAL (a), VALOR FINAL (b), TOLERANCIA QUE SE PERMITE (t) E ITERACIONES MAXIMAS (k)
//-------------------------------------------------------------------------------------------------

//BIBLIOTECAS A INCLUIR
#include <iostream>
#include <cmath>
#include <iomanip>
#include <Windows.h>
#include<stdlib.h>
#include<math.h>

using namespace std;



//DESIGNACION DE LA FUNCION QUE QUEREMOS ENCONTRARLE LA RAIZ, POR EL METODO DE LA BISECCION
double f(double x)
{
	return ();     //COLOCAR AQUI LA FUNCION A LA CUAL QUEREMOS CALCULAR LA RAIZ

	system("pause");
}
int main()
{
//DECLARACIONES DE LAS VARIABLES A UTILIZAR
int k; // nº maximo de iteraciones 
double a; // Valor minimo del intervalo
double b; //valor maximo del intervalo
double t; //valor del error permitido
	
//INGRESO DE LAS VARIABLES 
cout << "ingrese el valor minimo del intervalo: " <<endl;
cin >>a;

cout <<"ingrese el valor valor maximo del intervalo: " <<endl;
cin >>b;

cout <<"ingrese el error permitido: " <<endl;
cin >>t;

cout <<"ingrese el numero maximo de iteraciones: " <<endl;
cin>>k;	
cout<<"\n"<<endl; // ESTE ES UTILIZADO PARA SEPARAR DATOS DE ENTRADA Y SALIDA
	
int c = 0;              //DEFINICION DE CONSTANTE PARA CONTADOR
double d = 0.5*(b+a);   //DEFINICION DE FUNCION DE DOBLE PRESICION 
int j;                  // CONDICION PARA CUANDO SE SUPERA LAS ITERACIONES

// COMIENZO DEL METODO
if (f(a)*f(b)<0)
{

   while  (abs(b-a)>t)  // CONDICION PARA SABER SI LOS DOS VALORES INTRODUCIDOS SON MAYORES A 
                        //LA TOLERANCIA
   {
       c++;
       if (k>c)    // CONDICION PARA VER SI NO SE SUPERA EL NUMERO DE ITERACIONES
       {
           d = 0.5*(a+b);
           if (f(a)*f(d)<0) // CONDICION PARA DISMINUIR EL INTERVALO 
           {
               b = d;
           }
           else
           {
		   
               a = d;
           }
           j = 1;
       }
       else      // DEMOSTRACION QUE SE SUPERO LA CANTIDAD DE ITERACIONES     
       {
       	j = 0;
           cout<<"se supero el numero de iteraciones, aumente este para disminuir el error \n"<<endl;
           break;
       }
   }
}
else if (f(a)*f(b)==0) // CONDICION PARA CUANDO ALGUNA DE LAS FUNCIONES ES CERO
{
	if (f(a)==0 && f(b)==0)
	{
	 cout<<"ambos valores son raiz"<<endl;
	 }
	else if (f(a)==0)
	{
	 cout<<"el valor inferior es la raiz"<<endl;
	 }
	 else
	 {
	 	cout<<"el valor superior es la raiz"<<endl;
	 }
	 j = 0;
}
else
 {
 cout<<"error el intervalo no cumple la condicion inicial del metodo"<<endl;
 j = 0;
 }

// SALVACION PARA MOSTRAR RESULTADO EN CASO DE NO SUPERAR K

if (j==1) //CONDICION PARA CUANDO NO SE SUPERA EL NUMERO DE ITERACIONES
{
// DEMOSTRACION DE RESULTADOS
cout<<"el numero de iteraciones es: "<<endl;
cout<<c<<endl;
cout<<"el error cometido es: "<<endl;
cout<<abs(b-a)<<endl;
cout<<"la aproximacion es: "<<endl;
cout<<d<<endl;
system("pause");
}
return 0;

}
