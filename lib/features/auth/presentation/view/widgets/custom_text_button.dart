import 'package:deeon/core/helpers/is_arabic.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.fontWeight = FontWeight.normal,
  });
  final Function() onPressed;
  final String textButton;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textButton,
        style: isArabic()
            ? Styles.textStyle22.copyWith(
                fontWeight: fontWeight,
                color: ColorManager.primaryColor,
              )
            : Styles.textStyle16.copyWith(
                fontWeight: fontWeight,
                color: ColorManager.primaryColor,
              ),
      ),
    );
  }
}
