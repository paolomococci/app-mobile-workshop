void main() {
  variablePlayground();
}

void basicTypes() {
  int three = 3;
  double pi = 3.14;
  num someNumber = 32511;
  bool one = true;
  bool zero = false;

  print(three);
  print(pi);
  print(someNumber);
  print(one);
  print(zero);
}

void untypedVariables() {
  dynamic something = 14.2;
  print(something.runtimeType);
}

void typeInterpolation() {
  var anInteger = 25;
  var aDouble = 25.5;
  var aBoolean = false;

  print(anInteger.runtimeType);
  print(anInteger);

  print(aDouble.runtimeType);
  print(aDouble);

  print(aBoolean.runtimeType);
  print(aBoolean);
}

void immutableVariables() {
  /* type notation is optionally */
  final int immutableInteger = 7;
  final double immutableDouble = 0.14;

  final immutableAndInterpolateInteger = 5;
  final immutableAndInterpolateDouble = 55.55;

  print(immutableAndInterpolateInteger);
  print(immutableAndInterpolateDouble);

  print(immutableInteger);
  print(immutableDouble);
}

void variablePlayground() {
  basicTypes();
  untypedVariables();
  typeInterpolation();
  immutableVariables();
}
