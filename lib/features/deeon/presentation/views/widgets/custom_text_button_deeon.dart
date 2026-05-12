import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:flutter/material.dart';

class CustomTextButtonDeeon extends StatelessWidget {
  const CustomTextButtonDeeon({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
    required this.color,
  });
  final void Function() onTap;
  final String title;
  final IconData iconData;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.30,
        height: size.width * 0.12,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(RadiusManager.r10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconData, size: FontManager.font25),
            Text(title, style: TextStyle(fontSize: FontManager.font22)),
          ],
        ),
      ),
    );
  }
}
