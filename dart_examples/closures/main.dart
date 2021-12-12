void main() {
  consumeClosure();
}

void callbackExample(void callback(String value)) {
  callback('Hello from callback function!');
}

typedef NumberGetter = num Function();

num powerOfTwo(NumberGetter getter) {
  return getter() * getter();
}

void consumeClosure() {
  final getTwentyFour = () => 6 / (1 - 3 / 4);
  final fourSquared = powerOfTwo(getTwentyFour);

  print(fourSquared);

  callbackExample((result) {
    print(result);
  });
}
