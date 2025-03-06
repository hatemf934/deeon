import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/font_manager.dart';
import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton(
      {super.key, required this.text, this.fontWeight, this.onPressed});
  final String text;
  final FontWeight? fontWeight;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: kColorPrimary,
              fontSize: FontManager.font16,
              fontWeight: fontWeight),
        ));
  }
}
