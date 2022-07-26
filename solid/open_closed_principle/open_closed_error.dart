class ContratoClt {
  void salario() {
    //...
  }
}

class ContratoPj {
  void salario() {}
}

class Estagio {
  void bolsaAuxilio() {
    //...
  }
}

class FolhaDePagamento {
  double? saldo;

  void calcular(funcionario) {
    if (funcionario.runtimeType == ContratoClt) {
      saldo = funcionario.salario();
    } else if (funcionario.runtimeType == Estagio) {
      saldo = funcionario.bolsaAuxilio();
    }
  }
}
