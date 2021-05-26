class Loader {
  static Loader _instance = Loader._internal();

  Loader._internal();

  factory Loader() => _instance;

  bool isLoading = false;
}
