void main() {
  // Animal animal = Animal(age: 10, name: 'Tótó');
  Cat cat = Cat();
  Dog dog = Dog();

  cat.feed();
  dog.feed();
}

// A classe abstrata faz com que essa classe não possa ser instanciada, apenas extendida e implementada.
abstract class Animal {
  void feed();
  void run(double distance);
}

class Dog implements Animal {
  // O implements é usado para implementar uma interface, ai agente precisa
  // "sobrescrever" nossos métodos da classe pai.

  @override
  void feed() {
    print('Cachorro comendo');
  }

  @override
  void run(double distance) {
    print('Cachorro correndo');
  }
}

class Cat implements Animal {
  @override
  void feed() {
    print('Gato comendo');
  }

  @override
  void run(double distance) {
    print('Gato correndo');
  }
}
