main() {
  functionPlayground();
}

void functionPlayground() {
  classicalFunctions();
  optionalParameters();
  optionalParametersFunctions();
}

void classicalFunctions() {
  printMyName('John');

  final sum = add(5, 3);
  print(sum);

  print('4 factorial is: ${factorial(4)}');
}

void optionalParameters() {}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge ${actualAge == 1 ? 'year' : 'years'} old.');
}

void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hi';
  final actualName = name ?? 'John Doe';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int count = 1}) {
  String merged = '';
  for (var i = 0; i < count; i++) {
    merged += name;
    if (i != count - 1) {
      merged += ' ';
    }
  }
  return merged;
}

void optionalParametersFunctions() {
  unnamed('Lisa', 3);
  unnamed();

  /* notice how named parameters can be in any order */
  named(greeting: 'Greeting and salutation');
  named(name: 'Liz');
  named(name: 'Zoe', greeting: 'Welcome');
  named();

  final multiply = duplicate('Geo', count: 5);
  print(multiply);
}
