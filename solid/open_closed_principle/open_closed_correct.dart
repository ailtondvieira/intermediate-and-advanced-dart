void main() {
  ContratoClt contratoClt = ContratoClt();
  ContratoPj contratoPj = ContratoPj();
  ContratoMenorAprendiz menorAprendiz = ContratoMenorAprendiz();

  FolhaDePagamento folhaDePagamento = FolhaDePagamento();
  folhaDePagamento.calcular(contratoPj);
  folhaDePagamento.calcular(contratoClt);
  folhaDePagamento.calcular(menorAprendiz);
}

abstract class Remuneravel {
  void pagarSalario();
}

class ContratoClt implements Remuneravel {
  @override
  void pagarSalario() {
    print('Pagamento do tipo clt');
    //...
  }
}

class ContratoPj implements Remuneravel {
  @override
  void pagarSalario() {
    print('Pagamento do tipo PJ');
    // ...
  }
}

class ContratoMenorAprendiz implements Remuneravel {
  @override
  void pagarSalario() {
    print('Pagando menor aprendiz');
  }

}

class Estagio implements Remuneravel {
  @override
  void pagarSalario() {
    print('Pagamento de bolsa de estudo');
    //...
  }
}

class FolhaDePagamento {
  double? saldo;

  void calcular(Remuneravel funcionario) {
    funcionario.pagarSalario();
  }
}
