part of 'color_themes.dart';

class DarkColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  late final ColorScheme? colorScheme;

  @override
  late final Brightness? brightness;

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
  Color? cursorColor;

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.darkGrey;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.lighterGrey;
    tabbarSelectedColor = colors.green;
    colorScheme = const ColorScheme.dark().copyWith(onPrimary: colors.green, onSecondary: colors.darkGrey);
    brightness = Brightness.dark;
    cursorColor = colors.white;
  }
}
