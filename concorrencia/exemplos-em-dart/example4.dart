import 'dart:io';
import 'dart:async';
import 'dart:isolate';

Isolate? isolate;

// Start the isolate
Future<void> start() async {
  // Port for isolate to receive message.
  ReceivePort receiverPort = ReceivePort();
  isolate = await Isolate.spawn(runTimer, receiverPort.sendPort);
  receiverPort.listen((data) {
    stdout.write('Receiving: ' + data + ', ');
  });
}

void runTimer(sendPort) {
  int count = 0;
  Timer.periodic(new Duration(seconds: 1), (Timer t) {
    count++;
    String msg = 'notification ' + count.toString();
    stdout.write('Sending: ' + msg + ' -');
    sendPort.send(msg);
  });
}

// Stopping the isolate using the stop() function.
void stop() {
  if (isolate != null) {
    stdout.writeln('Stopping Isolate.....');
    isolate!.kill(priority: Isolate.immediate);
    isolate = null;
  }
}

void main() async {
  stdout.writeln('Starting Isolate...');
  await start();
  stdout.writeln('Hit enter key to quit');
  await stdin.first;
  stop();
  stdout.writeln('Bye!');
  exit(0);
}
