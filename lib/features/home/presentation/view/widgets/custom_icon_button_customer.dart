import 'package:deeon/core/utils/font_manager.dart';
import 'package:flutter/material.dart';

class CustomIconButtonCustomer extends StatelessWidget {
  const CustomIconButtonCustomer({
    super.key,
    required this.iconData,
    required this.onpressed,
    required this.color,
  });
  final IconData iconData;
  final VoidCallback onpressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(iconData, size: FontManager.font30, color: color),
    );
  }
}
