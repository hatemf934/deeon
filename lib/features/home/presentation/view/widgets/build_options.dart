import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class BuildOptions extends StatelessWidget {
  const BuildOptions({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.17,
            height: MediaQuery.of(context).size.height * 0.11,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.witheColor,
                width: WidthManager.w1,
              ),
              shape: BoxShape.circle,
              color: ColorManager.transmentColor,
            ),
            child: Icon(
              icon,
              color: ColorManager.witheColor,
              size: FontManager.font30,
            ),
          ),
        ),
        Text(label, style: TextStyle(color: ColorManager.witheColor)),
      ],
    );
  }
}
