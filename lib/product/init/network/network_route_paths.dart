class NetworkRoutePath {
  static NetworkRoutePath? _instance;
  static NetworkRoutePath? get instance {
    if (_instance == null) {
      _instance = NetworkRoutePath._init();
    }
    return _instance;
  }

  NetworkRoutePath._init();

  final String login = "login";
  final String forgot = "forgot";
  final String signUp = "signup";
}
