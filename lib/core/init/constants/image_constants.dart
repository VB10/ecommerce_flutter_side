import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
  final _IconPath iconPath = _IconPath();
}

class _LottiePath {
  final String shopCar = 'lottie_shop_car'.toLottie;
  final String shopBag = 'lottie_shop_bag'.toLottie;
  final String ecommerceSplash = 'ecommerce_splash'.toLottie;
  final String ecommerce = 'e_commerce'.toLottie;
  final String shopSplash = 'lottie_shop_splash'.toLottie;
}

class _IconPath {
  final String allOrder = 'ic_all_order'.toIcon;
  final String currency = 'ic_currency'.toIcon;
  final String faq = 'ic_faq'.toIcon;
  final String finished = 'ic_finished'.toIcon;
  final String invite = 'ic_invite'.toIcon;
  final String language = 'ic_language'.toIcon;
  final String legal = 'ic_legal'.toIcon;
  final String notification = 'ic_notifications'.toIcon;
  final String payment = 'ic_payment'.toIcon;
  final String padingPayment = 'ic_pending_payment'.toIcon;
  final String padingShipment = 'ic_pending_shipments'.toIcon;
  final String privacy = 'ic_privacy'.toIcon;
  final String rate = 'ic_rate'.toIcon;
  final String shipping = 'ic_shipping'.toIcon;
  final String suggest = 'ic_suggest'.toIcon;
  final String support = 'ic_support'.toIcon;
  final String message = 'ic_message'.toIcon;
  // final String notification = 'ic_support'.toIcon;

}

extension _ImagePathPrefix on String {
  String get toPNG => 'assets/image/$this.png';
  String get toIcon => 'assets/png/$this.png';
  String get toSVG => 'assets/svg/$this.svg';
  String get toLottie => 'assets/lottie/$this.json';
}

class ImageSample extends StatelessWidget {
  const ImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(ImageConstatns.instance.redArrow),
        LottieBuilder.asset(ImageConstatns.instance.lottiePath.ecommerce)
      ],
    );
  }
}
