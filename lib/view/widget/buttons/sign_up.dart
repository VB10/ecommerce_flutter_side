import 'package:gow_mobile/core/components/button/fill_button_widget.dart';
import 'package:gow_mobile/core/components/image/circle_image.dart';
import 'package:gow_mobile/core/init/constants/image_constants.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({Key key, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildFullWidthButton("SIGN UP");
  }

  FullWidthButton buildFullWidthButton(String text) {
    return FullWidthButton(
      title: text,
      onPressed: onPressed,
      icon: CircleImage(
        path: ImageConstatns.instance.redArrow,
        radius: 15,
        turns: 0.5,
        scale: 1.5,
      ),
    );
  }
}

extension LoginButton on SignUpButton {
  Widget get toLoginButton {
    return buildFullWidthButton("LOG IN");
  }

  Widget get toSendEmailButton {
    return buildFullWidthButton("SEND EMAIL");
  }
}
