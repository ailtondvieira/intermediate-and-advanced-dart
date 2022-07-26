void main() {
  Construtors construtors = Construtors('Ailton', 20);
  print(construtors.toString());
}

class Construtors {
  String? name;
  String? hobby;
  int? age;

  Construtors(this.name, this.age); // Construtor NÃO NOMEADO

  Construtors.nomeadoOpcionais({
    this.name,
    this.age,
  }); // Construtor NOMEADO COM PARAMETROS NOMEADOS E OPCIONAIS

  Construtors.nomeadoRequerido({
    required this.name,
    required this.hobby,
    required this.age,
  }); // Construtor NOMEADO COM PARAMETROS NOMEADOS E REQUERIDOS

  Construtors.hibrido(
    this.name, {
    required this.hobby,
    required this.age,
  }); // Construtor NOMEADO COM PARAMETROS HIBRIDOS

  Construtors.hibridoComDefault(
    this.name, {
    this.hobby = 'programar',
    required this.age,
  }); // Construtor NOMEADO COM PARAMETROS HIBRIDOS e com VALORES DEFAULT

}
