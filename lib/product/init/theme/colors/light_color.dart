part of 'color_themes.dart';

class LightColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  late final ColorScheme? colorScheme;

  @override
  late final Color? appBarColor;

  @override
  late final Color? scaffoldBackgroundColor;

  @override
  late final Color? tabBarColor;

  @override
  late final Color? tabbarNormalColor;

  @override
  late final Color? tabbarSelectedColor;

  @override
  late final Brightness? brightness;

  @override
  late final Color? cursorColor;

  @override
  late final Color? bottomAppBarColor;

  @override
  late final Color? cardShadowColor;
  @override
  Color? textColor;

  LightColors() {
    cardShadowColor = colors.athensGray;
    bottomAppBarColor = colors.white;
    appBarColor = colors.lighterGrey;
    textColor = Colors.black;
    scaffoldBackgroundColor = colors.lighterGrey;
    brightness = Brightness.light;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.mediumGreyBold;
    tabbarSelectedColor = colors.bitterSweet;
    cursorColor = colors.darkGrey;
    colorScheme = ColorScheme(
      onPrimary: colors.darkGrey,
      onSecondary: colors.white,
      onError: Colors.red,
      onSurface: colors.mediumGreyBold,
      primary: colors.lightGrey,
      secondary: colors.mediumGrey,
      error: colors.bitterSweet,
      onBackground: colors.darkGrey,
      primaryVariant: colors.lighterGrey,

      //

      background: colors.lightGrey,
      brightness: Brightness.light,
      secondaryVariant: colors.mediumGrey,
      surface: colors.white,
    );
  }
}
