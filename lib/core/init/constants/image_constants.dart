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

  final _LottiePath lottiePath = _LottiePath();
}

class _LottiePath {
  final String shopCar = 'lottie_shop_car'.toLottie;
  final String shopBag = 'lottie_shop_bag'.toLottie;
  final String ecommerceSplash = 'ecommerce_splash'.toLottie;
  final String ecommerce = 'e_commerce'.toLottie;
}

extension _ImagePathPrefix on String {
  String get toPNG => 'assets/image/$this.png';
  String get toSVG => 'assets/svg/$this.svg';
  String get toLottie => 'assets/lottie/$this.json';
}
