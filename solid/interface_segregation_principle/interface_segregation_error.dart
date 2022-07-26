abstract class Aves {
  void setarLocalizacao(longitude, latitude);
  void voar($altitude);
  void seAlimentar();
}

class Papagaio implements Aves {
  @override
  void setarLocalizacao(longitude, latitude) {
    //Faz alguma coisa
  }

  @override
  void voar($altitude) {
    //Faz alguma coisa
  }

  @override
  void seAlimentar() {
    //Faz alguma coisa
  }
}

class Pinguim implements Aves {
  @override
  void setarLocalizacao(longitude, latitude) {
    // Faz alguma coisa
  }

  // A Interface Aves está forçando a Classe Pinguim a implementar esse método.
  // Isso viola o príncipio ISP
  @override
  void voar(altitude) {
    //Não faz nada...  Pinguins são aves que não voam!
  }

  @override
  void seAlimentar() {
    //Faz alguma coisa
  }
}
