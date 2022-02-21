import 'package:flutter/material.dart';

abstract class BaseViewModel {
  late BuildContext context;
  void setContext(BuildContext context);
  void init();
}
