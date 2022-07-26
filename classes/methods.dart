void main() {
  Computer.metodoEstatico();
  Computer computer = Computer('Positivo');

  computer.setBrand = 'Apple';
  computer.metodoMaisComplexo(['Ailton']);
  computer.metodoComArgumentosNomeados(
    'Aodkawodkw',
    name: 'Ailton',
   
  );

  print(computer.getBrand);
}

class Computer {
  String _brand;

  ///// Os três principais métodos especiais

  // Método Construtor
  Computer(this._brand);

  // Método Getter
  String get getBrand {
    return _brand;
  }

  // Método Setter
  set setBrand(String value) {
    _brand = value;
  }

  ///// MÉTODOS NORMAL

  // método com retorno diferente e pedindo parametros
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> names) {
    List<Map<String, dynamic>> myList = [
      {'name': 'Ailton', 'age': 20},
      {'name': 'Strawti', 'age': 3},
    ];
    return myList;
  }

  // Método estático
  static void metodoEstatico() {
    print('É chamado SEM INSTANCIAR a CLASSE');
  }

  // Método com argumentos personalizados
  void metodoComArgumentosNomeados(
    String value, {
    required String name,
    String? brand,
    void Function()? onPressed,
  }) {
    print('hello, world');
  }
}
