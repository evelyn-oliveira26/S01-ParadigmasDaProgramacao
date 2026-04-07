#include <iostream>
using namespace std;

class Robo {
	public:
		string modelo;
		int versao;
		float potenciaLaser;
		int integridade;
		
		void disparar(Robo &alvo) {
			cout << "Disparo confirmado!" << endl;
			cout << "O robo " << modelo << " disparou contra o robo " << alvo.modelo << "." << endl;
			alvo.integridade -= potenciaLaser; 
		}
};

int main () {
	//objetos: r1, r2
	Robo r1;
	Robo r2;
	
	r1.modelo = "X";
	r1.versao = 176;
	r1.potenciaLaser = 89;
	r1.integridade = 1000;
	
	r2.modelo = "Y";
	r2.versao = 674;
	r2.potenciaLaser = 95.5;
	r2.integridade = 980;
	
	//chamada do método de um objeto, passando outro objeto como parâmetro
	r1.disparar(r2);
	
	cout << endl;
	cout << "Status Robo " << r1.modelo << ": " << endl;
	cout << "Versao: " << r1.versao << endl;
	cout << "Potencia Laser: " << r1.potenciaLaser << endl;
	cout << "Integridade Atual: " << r1.integridade << endl;
	
	cout << endl;
	cout << "Status Robo " << r2.modelo << ": " << endl;
	cout << "Versao: " << r2.versao << endl;
	cout << "Potencia Laser: " << r2.potenciaLaser << endl;
	cout << "Integridade Atual: " << r2.integridade << endl;
		
	return 0;
}
