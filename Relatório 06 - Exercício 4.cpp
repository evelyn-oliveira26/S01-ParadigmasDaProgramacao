#include <iostream>
#include <list>
#include <string>
using namespace std;

class MembroConselho {
	public:
		string nome;
		
		virtual void saudar() {
			cout << "Um membro do conselho faz uma reverência silenciosa." << endl;
		} 
};

class Anao : public MembroConselho {
	public:
		void saudar() {
			cout << "Pela forca da montanha, eu sou " << nome << " e honro nosso aco!" << endl;
		}
};

class Orc : public MembroConselho {
	public:
		void saudar() {
			cout << "Pelo sangue e gloria, eu sou " << nome << " e trago a forca de minha tribo!" << endl;
		}
};

class Draconato : public MembroConselho {
	public:
		void saudar() {
			cout << "Pelo sopro dos ancestrais, eu sou " << nome << " e falo em nome dos dragoes!" << endl;
		}
};

int main () {
	list<MembroConselho*> m1;
	Anao anao1;
	Orc orc1;
	Draconato draco1;
	
	anao1.nome = "Dengoso";
	orc1.nome = "Azrog";
	draco1.nome = "Rhogar"; 
	
	//inserindo na lista
	m1.push_back(&anao1);
	m1.push_back(&orc1);
	m1.push_back(&draco1);
	
	for (MembroConselho* m : m1) {
		m->saudar();		
	}
	
	return 0;
}
