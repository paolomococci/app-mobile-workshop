void main() {
  collectionPlayground();
}

void collectionPlayground() {
  listPlayground();
  mapPlayground();
  setPlayground();
}

void listPlayground() {
  /* "List" literal syntax */
  final List<int> integerNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  integerNumbers.add(10);
  integerNumbers.addAll([11, 12, 13, 14, 15]);
  integerNumbers[14] = 51;

  print('The last number of list is: ${integerNumbers[14]}');

  integerNumbers[14] = 15;
  for (var item in integerNumbers) {
    print('item-> $item');
  }
}

void mapPlayground() {
  /* "Map" literal syntax */
  final Map<String, int> ages = {'Lea': 25, 'John': 28, 'Zoe': 32, 'Bob': 33};

  /* subscript sysntax uses the key type */
  ages['Tom'] = 29;
  ages['Kim'] = 28;

  final ageOfZoe = ages['Zoe'];
  print('Zoe is $ageOfZoe years old.');

  ages.forEach((key, value) {
    print('$key is $value years old.');
  });
}

void setPlayground() {
  /* "Set" literal is similar to "Map", but the first have not a key. */
  final Set<String> people = {
    'Zoe',
    'Bob',
    'Kim',
    'John',
    'Geo',
    'Lilly',
    'Dom'
  };
  /* Warning, duplicate is not allowed in a "Set", duplicates are automatically rejected. */
  people.addAll({'Pit', 'Joy'});

  for (var item in people) {
    print('$item is a person');
  }
}
