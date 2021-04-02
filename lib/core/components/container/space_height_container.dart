import 'package:flutter/material.dart';

class SpaceHeightBox extends StatelessWidget {
  final double height;

  const SpaceHeightBox({Key? key, required this.height})
      : assert(height > 0 && height <= 1),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
    );
  }
}
