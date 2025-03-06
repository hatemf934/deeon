import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/font_manager.dart';
import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({super.key, required this.text, this.fontWeight});
  final String text;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: kColorPrimary,
              fontSize: FontManager.font16,
              fontWeight: fontWeight),
        ));
  }
}
