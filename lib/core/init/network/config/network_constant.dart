class NetworkConsants {
  static NetworkConsants _instance;
  static NetworkConsants get instance {
    if (_instance == null) {
      _instance = NetworkConsants._init();
    }
    return _instance;
  }

  NetworkConsants._init();

  String get = "GET";
  String post = "POST";
  String empty = "Doesn't has type.";
}
