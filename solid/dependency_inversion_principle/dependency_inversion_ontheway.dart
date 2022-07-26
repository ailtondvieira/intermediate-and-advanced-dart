// Com o código refatorado, a criação do objeto MySQLConnection deixa de ser uma responsabilidade
// da classe PasswordReminder, a classe de conexão com o banco de dados virou uma dependência
// que deve ser injetada via método construtor. Olha o que apareceu para nós: Injeção de Dependência!

void main() {
  MySQLConnection mySQLConnection = MySQLConnection();
  OracleConnection oracleConnection = OracleConnection();

  // Já fica testavel fora
  PasswordReminder passwordReminder = PasswordReminder(mySQLConnection);
  // Ainda fica um pouco engessada
  // Sempre terei que usar o Mysql!
}

class PasswordReminder {
  final MySQLConnection dbConnection;
  // INJEÇÃO DE DEPENDÊNCIA
  PasswordReminder(this.dbConnection); // Pedindo a dependência no construtor
}

class MySQLConnection {}

class OracleConnection {}

// Apesar de termos usado a injeção de dependência para melhorar o nível de acoplamento do nosso código, 
// ele ainda viola o princípio da inversão de dependência! — lembre-se, um não é igual ao outro.

// Além de violar o DIP, se você prestar atenção na forma que o exemplo foi codificado irá perceber 
// que ele também viola o Open-Closed Principle. Por exemplo, se precisarmos alterar o banco de dados 
// de MySQL para Oracle teríamos que editar a classe.
