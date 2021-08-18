import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../extensions/string_extension.dart';

class IconFormTextField extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool? secure;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  const IconFormTextField(
      {Key? key,
      required this.label,
      required this.iconPath,
      this.secure,
      this.validator,
      this.controller,
      this.suffixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      child: TextFormField(
        controller: controller,
        obscureText: secure ?? false,
        validator: validator,
        decoration: InputDecoration(
          labelText: label.locale,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
          suffixIcon: suffixIcon,
          prefixIcon:
              Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05), child: Image.asset(iconPath)),
        ),
      ),
    );
  }
}
