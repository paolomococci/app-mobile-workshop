import 'builder.dart';

void main() {
  builderPlayground();
  cascadePlayground();
}

void builderPlayground() {
  final url = UriBuilder()
    ..protocol = 'http'
    ..host = 'sample.examples.local'
    ..routes = [
      'home',
      'help',
      'some#1',
    ];

  print('');
  print(url);
}

void cascadePlayground() {
  final numberVector = [3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
    ..insert(0, 2)
    ..sort((a, b) => a.compareTo(b));

  print('');
  print(
      'The largest prime number of this array: $numberVector, is: ${numberVector.last}.');
}
