import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CardShadow extends BoxShadow {
  CardShadow(BuildContext context)
      : super(color: context.colorScheme.primaryContainer, offset: const Offset(0, 8), blurRadius: 15, spreadRadius: 0);
}
