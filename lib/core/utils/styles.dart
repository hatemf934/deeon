import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static TextStyle textStyle30 = TextStyle(
    fontSize: FontManager.font30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStylewithe22 = TextStyle(
    color: ColorManager.witheColor,
    fontSize: FontManager.font22,
  );
  static TextStyle textStyle22 = TextStyle(
    color: ColorManager.primaryColor,
    fontSize: FontManager.font22,
  );
}
