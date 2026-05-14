import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static const TextStyle textStyle30 = TextStyle(
    fontSize: FontManager.font30,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyle22 = TextStyle(
    color: ColorManager.witheColor,
    fontSize: FontManager.font22,
  );

  static const TextStyle textStyle25 = TextStyle(
    color: ColorManager.appBarIconColor,
    fontSize: FontManager.font25,
  );
  static const TextStyle textStyle15 = TextStyle(
    color: ColorManager.appBarIconColor,
    fontSize: FontManager.font15,
  );
  static const TextStyle textStyle16 = TextStyle(
    color: ColorManager.secondryColor,
    fontSize: FontManager.font16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyle18 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: FontManager.font18,
  );
  static const TextStyle textStyle14 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: FontManager.font14,
  );
}
