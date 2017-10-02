//     PROGRAMA PARA SABER SI LA MATRIX ES SIMETRICA
//    
// Autores: Anelo Roman, Gonzales agustin               Fecha:29/09/2017
// 
// Este programa consiste en ingresar una matriz y comprobar si la misma 
// es simetrica. Devolviendo un "1" si lo es y un "0" si no lo es.
//-----------------------------------------------------------------------

// incluimos las librerias necesarias para crear el programa
#include<iostream>
#include<conio.h>

using namespace std;

int main (){
	int numeros[50][50],filas,columnas; 
	// si se desea trabajar con una matriz de mayor cantidad de filas
	// y columnas hay que cambiar el 50.
	
	int v;
	
	cout<<"Indique la cantidad de columnas: "; cin>>columnas;
	cout<<"Indique la cantidad de filas: "; cin>>filas;
	
	//condicion para que la matrix sea cuadrada.
	while (filas!=columnas){
	
	cout<<"las matrix no es cuadrada"<<endl; // aclaracion que la matriz no es cuadrada
	// reingresamos los valores.
	cout<<"Indique la cantidad de columnas: "; cin>>columnas;
	cout<<"Indique la cantidad de filas: "; cin>>filas;
	}
	// condicion para cargar los valores de la matriz
	
	if (filas==columnas){
		v=1;
		for(int i=0; i<filas;i++){
		for(int j=0; j<columnas;j++){
		cout<<"digite un numero ["<<i+1<<"]["<<j+1<<"]: ";
		cin>>numeros[i][j];
	}
	}
	//comprobacion que la matriz es simetrica
	for(int i=0; i<filas;i++){
	for(int j=0; j<columnas;j++){
		if (j!=i){ // condicion para no tomar los elemento de la diagonal
		
		//condicion para ver si hay algun termino distinto
		if(numeros[i][j]!=numeros[j][i]){
		v=0;
		break;
		}
	}
	}
			
	}
	}
	//mostramos el resultado obtenido
	
	cout<<v<<endl;
	
	return 0;
}
