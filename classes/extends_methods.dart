void main() {
  Client client1 = Client();
  client1.name = 'Ailton';
  client1.bankAccount = 'A9122ABC';
}

abstract class Person {
  String? name;
  String? cpf;
  int? birthday;

  int getAge() {
    if (birthday != null) {
      return DateTime.now().year - birthday!;
    } else {
      return 0;
    }
  }

  void login();
}

// [extends] Isso é herança (Herdar tudo que a outra classe tem, atributos, métodos)
class Client extends Person {
  String? bankAccount;

  // herdando um método e sobrescrevendo ele
  @override
  void login() {
    print('Login como cliente');
  }

  @override
  int getAge() {
    print(super.getAge()); // acessando o método getAge da classe Pai.
    return 10;
  }
}
