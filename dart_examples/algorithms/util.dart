class Person {
  final String name;
  final String surname;
  final int age;

  const Person(
    this.name,
    this.surname,
    this.age,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          surname == other.surname;

  @override
  int get hashCode => name.hashCode ^ surname.hashCode;

  @override
  String toString() {
    return '$name $surname $age';
  }

  factory Person.fromValues({
    required String role,
    required String name,
    required String surname,
    required int age,
  }) {
    return Employee(role, name, surname, age);
  }
}

class Employee extends Person {
  final String _role;

  Employee(this._role, String name, String surname, int age) : super('', '', 0);

  @override
  String toString() {
    return '$_role. ${super.toString()}';
  }
}

abstract class Greeter {
  String sayHello();
}
