#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
	public:
		string nomeCompleto;
	
		virtual void identificar() {
			cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << endl; 
		}
};

class Coordenador : public MembroInatel {
	public:
		string departamento;
		
		void identificar() {
			cout << "Meu nome e " << nomeCompleto;
			cout << ", sou o coordenador do departamento de " << departamento << " no Inatel." << endl;
		} 
};

class Pesquisador : public MembroInatel {
	public:
		string laboratorio;	
		
		void identificar() {
			cout << "Meu nome e " << nomeCompleto;
			cout << ", e realizo pesquisas no laboratorio " << laboratorio << " do Inatel." << endl;
		}
};

int main () {
	//objetos: m1, m2
	MembroInatel *m1;
	MembroInatel *m2;
	
	//objetos: c, p
	Coordenador c;
	Pesquisador p;
	
	m1 = &c;
	m2 = &p;
	
	c.nomeCompleto = "Derek Shepherd";
	c.departamento = "setores administrativos";
	
	p.nomeCompleto = "Izzie Stevens";
	p.laboratorio = "eHealth";
	
	//polimorfismo
 	m1->identificar();
 	m2->identificar();
 	
	return 0;
}
