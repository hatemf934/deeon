import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextDetailsDeeon extends StatelessWidget {
  const TextDetailsDeeon({super.key, required this.titleText});
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      titleText,
      style: Styles.textStyle25.copyWith(
        color: ColorManager.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
