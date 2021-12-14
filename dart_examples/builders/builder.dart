class UriBuilder {
  late String protocol;
  late String host;
  late List<String> routes;

  @override
  String toString() {
    final paths = [host, ...routes];
    final path = paths.join('/');

    return '$protocol://$path';
  }
}
