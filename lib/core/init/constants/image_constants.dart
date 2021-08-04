import '../../extensions/string_extension.dart';

class ImageConstatns {
  static ImageConstatns? _instance;
  static ImageConstatns get instance {
    _instance ??= ImageConstatns._init();

    return _instance!;
  }

  ImageConstatns._init();

  final String redArrow = 'back-1'.toPNG;
  final String mail = 'mail'.toPNG;
  final String lock = 'lock'.toPNG;
  final String user = 'user'.toPNG;

  String get mailSVG => '001-mail'.toSVG;
  String get passwordSVG => 'password'.toSVG;
  String get profileSVG => 'profile'.toSVG;
}
