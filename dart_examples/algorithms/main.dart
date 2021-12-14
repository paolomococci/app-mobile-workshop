import 'person.dart';

List<Map> data = [
  /* names, surnames and ages invented for the sole purpose of example */
  {'name': 'Alan', 'surname': 'Dwell', 'age': 23},
  {'name': 'Mathew', 'surname': 'Burn', 'age': 22},
  {'name': 'Gillian', 'surname': 'Emit', 'age': 24},
  {'name': 'Susan', 'surname': 'Nourish', 'age': 21},
  {'name': 'Hannah', 'surname': 'Zoom', 'age': 22},
  {'name': 'Mary', 'surname': 'Jab', 'age': 23},
  {'name': 'Francis', 'surname': 'Yield', 'age': 21},
  {'name': 'Julie', 'surname': 'Wring', 'age': 21},
  {'name': 'Steve', 'surname': 'Keep', 'age': 22},
  {'name': 'Helen', 'surname': 'Verse', 'age': 23},
  {'name': 'Amy', 'surname': 'Weep', 'age': 21},
  {'name': 'Charles', 'surname': 'Quit', 'age': 22},
  {'name': 'Fiona', 'surname': 'Take', 'age': 21},
  {'name': 'Eric', 'surname': 'Leap', 'age': 22},
  {'name': 'Joan', 'surname': 'Ooze', 'age': 24},
  {'name': 'Sophie', 'surname': 'Ring', 'age': 25},
  {'name': 'Ian', 'surname': 'Plead', 'age': 21},
  {'name': 'Keith', 'surname': 'Dive', 'age': 21},
  {'name': 'Roger', 'surname': 'Spill', 'age': 22},
  {'name': 'Clare', 'surname': 'Gild', 'age': 23},
  {'name': 'Alice', 'surname': 'Hound', 'age': 22},
  {'name': 'Victoria', 'surname': 'Mow', 'age': 22},
  {'name': 'Jonathan', 'surname': 'Xmas', 'age': 21},
  {'name': 'Marion', 'surname': 'Arise', 'age': 23},
  {'name': 'Sheila', 'surname': 'Naive', 'age': 22},
  {'name': 'Tony', 'surname': 'Cast', 'age': 21},
  {'name': 'Mark', 'surname': 'Flee', 'age': 21},
];

List<Person> stronglyTypedModelOfPeopleList() {
  final people = data.map<Person>((Map personMap) {
    final name = personMap['name'];
    final surname = personMap['surname'];
    final age = personMap['age'];
    return Person(name, surname, age);
  }).toList();

  return people;
}

void main() {
  algorithmsPlayground();
}

void algorithmsPlayground() {
  sortingPlayground();
  filteringPlayground('D');
  reducingPlayground();
  flatteningPlayground();
}

void flatteningPlayground() {}

void reducingPlayground() {}

void filteringPlayground(String filterChar) {
  final people = stronglyTypedModelOfPeopleList();
  final filteredPeople =
      people.where((person) => person.surname.startsWith(filterChar));

  print('');
  print('List of people whose surname begins with the letter: $filterChar:');
  filteredPeople.forEach(print);
}

void sortingPlayground() {
  final people = stronglyTypedModelOfPeopleList();

  people.sort((a, b) => a.surname.compareTo(b.surname));

  print('');
  print('people in alphabetical order by surname:');
  people.forEach(print);
}
