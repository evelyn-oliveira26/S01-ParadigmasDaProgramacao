#include <iostream>
#include <string>
using namespace std;

class Pessoa {
	private:
		string nome;
		int idade;
		
	public:
		void setNome(string n) {
			nome = n; 
		}
		
		string getNome() {
			return nome;
		}
		
		void setIdade(int i) {
			idade = i;
		}
		
		int getIdade() {
			return idade;
		}
};

class Protagonista : public Pessoa {
	private:
		int nivel;	

	public:
		void setNivel(int n) {
			nivel = n;
		}
		
		int getNivel() {
			return nivel;
		}
};

class Personagem : public Pessoa {
	private:
		int rank;
		
	public:
		void setRank(int r) {
			rank = r;
		}
		
		int getRank() {
			return rank;
		}	
};

int main () {
	
	Protagonista p1;
	Personagem p2;
	
	p1.setNome("Chewie");
	p1.setIdade(10);
	p1.setNivel(5);
	
	p2.setNome("Evelyn");
	p2.setIdade(20);
	p2.setRank(8);
	
	cout << "Protagonista:" << endl;
	cout << "Nome: " << p1.getNome() << endl;
    cout << "Idade: " << p1.getIdade() << endl; 
	cout << "Nivel: " << p1.getNivel() << endl;
	
	cout << endl;
	cout << "Personagem:" << endl;
	cout << "Nome: " << p2.getNome() << endl;
	cout << "Idade: " << p2.getIdade() << endl;
	cout << "Rank: " << p2.getRank() << endl;
	
	return 0;
}
