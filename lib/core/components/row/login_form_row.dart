import 'package:flutter/material.dart';

class LoginFormRow extends StatelessWidget {
  final Widget child;

  const LoginFormRow({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(flex: 18, child: child),
        Spacer(),
      ],
    );
  }
}
