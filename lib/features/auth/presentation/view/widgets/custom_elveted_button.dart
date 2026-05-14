import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle style;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style = Styles.textStyle22,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        minimumSize: Size(screenWidth * 0.78, HeightManager.h60),
        elevation: 12,
        shadowColor: ColorManager.hintColor,
      ),

      onPressed: onPressed,
      child: Text(text, style: style),
    );
  }
}
