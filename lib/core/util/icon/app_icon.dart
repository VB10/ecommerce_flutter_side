class AppIcon {
  static AppIcon? _instance;
  static AppIcon? get instance {
    if (_instance == null) {
      _instance = AppIcon._init();
    }
    return _instance;
  }

  AppIcon._init();
}
