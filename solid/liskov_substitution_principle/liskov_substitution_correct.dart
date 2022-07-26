void main() {
  Pessoa pessoa1 = Pessoa();
  Cliente cliente1 = Cliente();

  void imprimeNome(Pessoa pessoa) {
    return pessoa.getNome();
  }

  imprimeNome(pessoa1); // Meu nome é ClassA
  imprimeNome(cliente1); // Meu nome é ClassB
}

// Pessoa é a SUPER CLASSE
class Pessoa {
  void getNome() {
    print('Meu nome é Pessoa');
  }
}

// Cliente é SUBCLASSE
class Cliente extends Pessoa {
  void getCpfCliente() {
    print('OPAdokaowda');
  }

  void getNome() {
    print('Meu nome é Cliente');
  }
}
