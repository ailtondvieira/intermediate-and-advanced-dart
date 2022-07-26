import 'dart:isolate';

void sayhii(var msg) {
  print('execution from sayhii ... the message is :${msg}');
}

void main() {
  Isolate.spawn(sayhii, 'Hello!!');
  Isolate.spawn(sayhii, 'Whats up!!');
  Isolate.spawn(sayhii, 'Welcome!!');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
