abstract class Aves {
  void setLocalizacao(longitude, latitude);
  void renderizar();
}

abstract class AvesQueVoam extends Aves {
  void voar(altitude);
}

class Papagaio implements AvesQueVoam {
  void setLocalizacao(longitude, latitude) {
    //Faz alguma coisa
  }

  void voar(altitude) {
    //Faz alguma coisa
  }

  void renderizar() {
    //Faz alguma coisa
  }
}

class Pinguim implements Aves {
  void setLocalizacao(longitude, latitude) {
    //Faz alguma coisa
  }

  void renderizar() {
    //Faz alguma coisa
  }
}
