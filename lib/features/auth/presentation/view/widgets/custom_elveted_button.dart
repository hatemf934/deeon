import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        minimumSize: Size(screenWidth * 0.80, HeightManager.h60),
        elevation: 12,
        shadowColor: ColorManager.hintColor,
      ),

      onPressed: onPressed,
      child: Text(text, style: Styles.textStyle22),
    );
  }
}
