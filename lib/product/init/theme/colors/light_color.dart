part of './IColorTheme.dart';

class LightColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  ColorScheme? colorScheme;

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

  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.darkerGrey;
    tabbarSelectedColor = colors.green;
    colorScheme = ColorScheme.light()
        .copyWith(onPrimary: colors.green, onSecondary: colors.white, onSurface: colors.mediumGreyBold);
    brightness = Brightness.light;
  }

  @override
  Brightness? brightness;
}
