void main() {}

// Uma classe
class Animal {
  // atributos
  String name;
  int age;
  double weight;

  // Construtor mais simples (NÃO NOMEADO)
  Animal(this.name, this.age, this.weight);

  // métodos
  void run() {
    print('Correndo...');
  }

  void scream() {
    print('Gritando...');
  }
}
