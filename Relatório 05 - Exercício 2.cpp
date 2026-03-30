#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
	float multiplicacao = 1.0;
	for (int i = 0; i < tamanho; i++)
		multiplicacao *= arr[i];
	return multiplicacao;
}

int main () {
	float valor;
	float arr[100];
	int tamanho;
	
	cout << "Digite quantos numeros voce quer multiplicar: ";
	cin >> tamanho;
	
	cout << "Digite os numeros: ";
	for (int i = 0; i < tamanho; i++) 
		cin >> arr[i];
	
	cout << "Resultado da multiplicacao: " << multiplicaArray(arr, tamanho) << endl;
	
	return 0;
}
