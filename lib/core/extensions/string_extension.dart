import 'package:easy_localization/easy_localization.dart';
import 'package:gow_mobile/core/init/constants/regex_constants.dart';

extension ImagePathPrefix on String {
  String get toPNG => "assets/icon/$this.png";
  String get toSVG => "assets/svg/$this.svg";
}

extension StringLocalization on String {
  String get locale => this.tr();
}

extension StringValidator on String {
  // TODO: Constatns...
  String get isValidEmail {
    return RegExp(RegexConstants.instance.emailRegex).hasMatch(this) ? null : "Email adress is not match.";
  }

  String get isValidUserName {
    return RegExp(RegexConstants.instance.userNameRegex).hasMatch(this) ? null : "The value has a minimum of four characters.";
  }

  String get isValidPassword {
    return RegExp(RegexConstants.instance.passwordRegex).hasMatch(this) ? null : "The value has a minimum of six characters.";
  }
}
