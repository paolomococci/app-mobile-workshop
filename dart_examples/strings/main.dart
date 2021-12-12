void main() {
  stringPlayground();
}

void stringPlayground() {
  basicStringDeclaration();
  multiLineString();
  combinigString();
}

void combinigString() {
  traditionalConcatenation();
  modernInterpolation();
  anotherExampleOfInterpolation();
}

void traditionalConcatenation() {
  final hello = 'Hello';
  final world = "World!";

  final concatenation = hello + ' ' + world;
  print(concatenation);
}

void modernInterpolation() {
  final year = 2011;
  final interpolated = 'Dart was annunced in $year';
  print(interpolated);
}

void anotherExampleOfInterpolation() {
  final age = 43;
  final howOld = 'I am $age ${age == 1 ? 'year' : 'years'} old. Or maybe not.';
  print(howOld);
}

void multiLineString() {
  final withEscaping = 'One fish\nTwo fish\nThree fish\nand one more fish';
  print(withEscaping);

  final hamletSay = '''
  Simple multi-line text.
  More simple multi-line text.
  Still simple multi-line text.
  ''';
  print(hamletSay);
}

void basicStringDeclaration() {
  /* with single quotes */
  print('single quotes string');

  final aBoldStatement = 'Dart isn\'t loosely typed';
  print(aBoldStatement);

  /* with double quotes */
  print("Hello World!");
  final aMoreMildOpinion = "Dart's popularity has skyrocketed with Flutter";
  print(aMoreMildOpinion);

  /* combining single and double quotes */
  final mixAndMatch =
      'Every programmer should write "Hello World!" when learning a new programming language.';
  print(mixAndMatch);
}
