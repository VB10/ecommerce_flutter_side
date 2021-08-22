import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../lang/locale_keys.g.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isScure = true;
  final int _minumumLength = 6;

  void _changeView() {
    setState(() {
      _isScure = !_isScure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconFormTextField(
      controller: widget.controller,
      label: LocaleKeys.label_password.tr(),
      iconPath: ImageConstatns.instance.lock,
      secure: _isScure,
      suffixIcon: IconButton(
        onPressed: () {
          _changeView();
        },
        icon: _isScure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      ),
      validator: _controlValidate,
    );
  }

  String? _controlValidate(String? value) {
    if (value != null && value.length >= _minumumLength) {
      return null;
    }

    return LocaleKeys.validator_errorPassword.tr();
  }
}
