void main() {
  MySQLConnection mySQLConnection = MySQLConnection();
  OracleConnection oracleConnection = OracleConnection();
  FirebaseConnection firebaseConnection = FirebaseConnection();

  PasswordReminder passwordReminder0 = PasswordReminder(mySQLConnection);
  PasswordReminder passwordReminder1 = PasswordReminder(oracleConnection);
  PasswordReminder passwordReminder2 = PasswordReminder(firebaseConnection);
}

abstract class DBConnectionInterface {
  void connect();
}

class MySQLConnection implements DBConnectionInterface {
  @override
  void connect() {
    // ...
  }
}

class FirebaseConnection implements DBConnectionInterface {
  @override
  void connect() {
    // TODO: implement connect
  }
}

class OracleConnection implements DBConnectionInterface {
  @override
  void connect() {
    // ...
  }
}

class PasswordReminder {
  DBConnectionInterface dbConnection;
  PasswordReminder(this.dbConnection);
}
