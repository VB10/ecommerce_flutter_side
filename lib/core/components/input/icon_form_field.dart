import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../../extensions/string_extension.dart';
import '../image/icon_image.dart';

class IconFormTextField extends StatelessWidget {
  final String label;
  final String? iconPath;
  final bool? secure;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  IconFormTextField({Key? key, required this.label, this.iconPath, this.secure, this.validator, this.controller, this.suffixIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
      child: TextFormField(
        controller: controller,
        obscureText: secure ?? false,
        validator: validator,
        decoration: InputDecoration(
          labelText: label.locale,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: context.width * 0.05),
          suffixIcon: suffixIcon,
          prefixIcon: Padding(
            padding: EdgeInsets.all(context.width * 0.05),
            child: IconImage(path: iconPath).svg,
          ),
        ),
      ),
    );
  }
}
