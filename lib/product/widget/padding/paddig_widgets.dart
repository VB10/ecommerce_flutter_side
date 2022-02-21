import 'package:flutter/material.dart';

class PaddingNormal extends Padding {
  // ignore: use_key_in_widget_constructors
  const PaddingNormal({required Widget child})
      : super(padding: const EdgeInsets.symmetric(horizontal: 20), child: child);
}
