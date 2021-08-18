class ImageConstatns {
  static ImageConstatns? _instance;
  static ImageConstatns get instance {
    _instance ??= ImageConstatns._init();

    return _instance!;
  }

  ImageConstatns._init();

  final String redArrow = 'back-1'.toPNG;
  final String mail = 'mail'.toPNG;
  final String lock = 'password'.toPNG;
  final String user = 'profile'.toPNG;
}

extension _ImagePathPrefix on String {
  String get toPNG => 'assets/image/$this.png';
  String get toSVG => 'assets/svg/$this.svg';
}
