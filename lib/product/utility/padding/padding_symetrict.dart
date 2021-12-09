import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PagePaddingSymetrict extends EdgeInsets {
  PagePaddingSymetrict.horizontalNormal() : super.symmetric(horizontal: 4.w);
  PagePaddingSymetrict.verticalNormal() : super.symmetric(vertical: 4.h);
  PagePaddingSymetrict.verticalLowNormal() : super.symmetric(vertical: 2.h);
}
