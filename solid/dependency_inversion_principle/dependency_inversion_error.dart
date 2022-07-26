void main() {
  PasswordReminder passwordReminder = PasswordReminder();
}

class PasswordReminder {
  late MySQLConnection dbConnection;

  PasswordReminder() {
    // instanciando já dentro de PasswordReminder
    // SEM PEDIR NADA PELO CONSTRUTOR
    // # ENGESSADO!
    dbConnection = MySQLConnection();
  }
}

class MySQLConnection {}
