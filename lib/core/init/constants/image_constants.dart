import 'package:gow_mobile/core/extensions/string_extension.dart';

class ImageConstatns {
  static ImageConstatns _instance;
  static ImageConstatns get instance {
    if (_instance == null) {
      _instance = ImageConstatns._init();
    }
    return _instance;
  }

  ImageConstatns._init();

  String get redArrow => "back-1".toPNG;
  String get mail => "mail".toPNG;
  String get lock => "lock".toPNG;
  String get user => "user".toPNG;

  String get mailSVG => "001-mail".toSVG;
  String get passwordSVG => "password".toSVG;
  String get profileSVG => "profile".toSVG;
}
