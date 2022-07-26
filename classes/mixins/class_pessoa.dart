void main() {
  Ailton ailton = Ailton();
  ailton.programar();
}

class Pessoa {
  String? nome;
  String? cpf;

  void comer() => print('Comendo...');
  void dancar() => print('Comendo...');
  void beber() => print('Comendo...');
  void dormir() => print('Comendo...');
}

class Pedrinho extends Pessoa {}
class Maria extends Pessoa {}
class Ailton extends Pessoa with Codar, NaoDormir {
  // Com a palavra with eu uso os Mixins
}
class Carlos extends Pessoa {}
class Julia extends Pessoa with Codar, NaoDormir {}

mixin Codar {
  void programar() {
    print('Programando...');
  }
}
// Para criar um Mixin eu usarei a palavra chave mixin e em seguida escrevo o nome seguindo
// os mesmos padrões de nomenclatura de uma classe.
mixin NaoDormir {
  void naoDormir() {
    // Aqui escrevo o método que será injetado em outra classe
    print('Sempre acordado');
  }
}
