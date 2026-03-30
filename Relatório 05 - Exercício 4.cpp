#include <iostream>
using namespace std;

int main () {
	int sala[5][5] = {0};
	int opcao;
	int linha, coluna;
	int ocupados = 0;
	int vazios = 0;

	do {
		cout << "1 - Reservar assento" << endl;
		cout << "2 - Mostrar sala" << endl;
		cout << "3 - Sair" << endl;
		
		cout << endl;
		cout << "Digite sua opcao: ";
		cin >> opcao;

		if (opcao == 1) {
			cout << "Linha (0-4): ";
			cin >> linha;
			cout << "Coluna (0-4): ";
			cin >> coluna;
			cout << endl;
			
			if (sala[linha][coluna] == 0) {
				sala[linha][coluna] = 1;
				cout << "Assento reservado." << endl;
			} else {
				cout << "Assento ja ocupado." << endl;
			}
		}

		else if (opcao == 2) {
			cout << "Sala:" << endl;
			for (int i = 0; i < 5; i++) {
				for (int j = 0; j < 5; j++) {
					cout << sala[i][j] << " ";
				}
				cout << endl;
			}
		}
		cout << endl;
	} while (opcao != 3);

	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			if (sala[i][j] == 1)
				ocupados++;
			else
				vazios++;
		}
	}

	cout << "Assentos ocupados: " << ocupados << endl;
	cout << "Assentos vazios: " << vazios << endl;

	return 0;
}
