import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static TextStyle textStyle30 = TextStyle(
    fontSize: FontManager.font30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle22 = TextStyle(
    color: ColorManager.witheColor,
    fontSize: FontManager.font22,
  );

  static TextStyle textStyle25 = TextStyle(
    color: ColorManager.appBarIconColor,
    fontSize: FontManager.font25,
  );
  static TextStyle textStyle15 = TextStyle(
    color: ColorManager.appBarIconColor,
    fontSize: FontManager.font15,
  );
  static TextStyle textStyle18 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: FontManager.font18,
  );
}
