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

  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    brightness = Brightness.light;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.darkerGrey;
    tabbarSelectedColor = colors.green;
    cursorColor = colors.darkGrey;
    colorScheme = ColorScheme(
      onPrimary: colors.darkGrey,
      onSecondary: colors.white,
      onError: Colors.red,
      onSurface: colors.mediumGreyBold,
      primary: colors.darkGrey,
      //
      background: colors.lightGrey,
      brightness: Brightness.light,
      error: colors.bitterSweet,
      onBackground: colors.darkGrey,
      primaryVariant: colors.green,
      secondary: colors.mediumGrey,
      secondaryVariant: colors.mediumGreyBold,
      surface: colors.white,
    );
  }
}
