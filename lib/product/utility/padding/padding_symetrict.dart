import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PagePaddingSymetrict extends EdgeInsets {
  const PagePaddingSymetrict.horizontalNormal() : super.symmetric();
  PagePaddingSymetrict.verticalNormal() : super.symmetric(vertical: 4.h);
}
