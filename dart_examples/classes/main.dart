void main() {
  classesPlayground();
}

void classesPlayground() {
  final name = OfficialName('Mr', 'John', 'Doe');
  final result = name.toString();

  print(result);
}

class Name {
  final String first;
  final String last;

  Name(this.first, this.last);

  String toString() {
    return '$first $last';
  }
}

class OfficialName extends Name {
  /* private properties begin with an underscore */
  final String _title;

  OfficialName(this._title, String first, String last) : super(first, last);

  @override
  String toString() {
    return '$_title $first $last';
  }
}
