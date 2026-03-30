#include <iostream>
using namespace std;

int main () {
	int opcao;
	float saldo;
	float deposito;
	float saque;
	
	cout << "Digite seu saldo inicial: R$ ";
	cin >> saldo;
	
	do {
		cout << endl;
		cout << "Menu de opcoes" << endl;
		cout << "1. Ver saldo" << endl;
		cout << "2. Depositar" << endl;
		cout << "3. Sacar" << endl;
		cout << "4. Sair" << endl;
		cout << endl;
		
		cout << "Digite uma opcao: ";
		cin >> opcao;
		cout << endl;
		
		if (opcao == 1) 
			cout << "R$ " << saldo << endl;
		
		else if (opcao == 2) {
			cout << "Digite o valor que deseja depositar: R$ ";
			cin >> deposito;
			saldo += deposito;
		}
			
		else if (opcao == 3) {
			cout << "Digite o valor que deseja sacar: R$ ";
			cin >> saque;
			if (saque > saldo) {
				cout << "Saldo insuficiente." << endl;
			} else {
				saldo -= saque;
			}
		}
	} while (opcao != 4);
	
	return 0;
}
