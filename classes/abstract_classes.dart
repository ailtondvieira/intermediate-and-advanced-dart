void main() {
  // Animal animal = Animal(age: 10, name: 'Tótó');
  Cat cat = Cat(name: 'mimimi', age: 3);
  Dog dog = Dog(name: 'tótó', age: 10);

  cat.feed();
  dog.feed();
}

// A classe abstrata faz com que essa classe não possa ser instanciada, apenas extendida e implementada.
abstract class Animal {
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void feed() {
    print('Animal se alimentando');
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.age});

  void run() {
    print('Cachorro correndo...');
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.age});

  void run() {
    print('Gato correndo...');
  }
}
