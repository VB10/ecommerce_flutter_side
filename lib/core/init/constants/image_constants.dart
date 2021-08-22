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

  // Lottie
  final String ecommerceSplash = 'ecommerce_splash'.toLottie;
  final String ecommerce = 'e_commerce'.toLottie;
}

extension _ImagePathPrefix on String {
  String get toPNG => 'assets/image/$this.png';
  String get toSVG => 'assets/svg/$this.svg';
  String get toLottie => 'assets/lottie/$this.json';
}
