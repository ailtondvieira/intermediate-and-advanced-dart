void main() {
  var result = getRange(3, 10);
  print(result);
}

Iterable<int> getRange(int start, int stop) sync* {
  for (int index = start; index <= stop; index++) {
    yield index;
  }
}

Stream<int> getRangeAsync(int start, int stop) async* {
  for (int index = start; index < stop; index++) {
    await Future.delayed(Duration(seconds: 1));
    yield index;
  }
}