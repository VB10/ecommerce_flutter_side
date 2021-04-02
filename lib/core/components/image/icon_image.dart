import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconImage extends StatelessWidget {
  final String? path;

  const IconImage({Key? key, this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(path!);
  }
}

extension ImageSVGExtension on IconImage {
  Widget get svg => SvgPicture.asset(path!);
}
