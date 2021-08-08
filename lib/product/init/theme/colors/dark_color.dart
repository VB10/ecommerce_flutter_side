part of './IColorTheme.dart';

class DarkColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  ColorScheme? colorScheme;

  @override
  Brightness? brightness;

  @override
  Color? appBarColor;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  Color? tabbarNormalColor;

  @override
  Color? tabbarSelectedColor;

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.darkGrey;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.lighterGrey;
    tabbarSelectedColor = colors.green;
    colorScheme = ColorScheme.dark().copyWith(onPrimary: colors.green, onSecondary: colors.darkGrey);
    brightness = Brightness.dark;
  }
}
