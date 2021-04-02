import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String path;
  final double turns;
  final double scale;
  final double radius;

  const CircleImage(
      {Key key, @required this.path, this.turns, this.scale, this.radius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).buttonTheme.colorScheme.surface,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(turns ?? 1),
        child: Image.asset(
          path,
          scale: scale,
        ),
      ),
    );
  }
}
