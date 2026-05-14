import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.color, required this.text});
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.80,
      height: size.height * 0.09,
      child: Card(
        elevation: 15,
        shadowColor: ColorManager.blackColor,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: PaddingManager.p16,
            vertical: PaddingManager.p8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Styles.textStyle18.copyWith(
                  color: ColorManager.secondryColor,
                ),
              ),
              Icon(Icons.logout, color: ColorManager.secondryColor),
            ],
          ),
        ),
      ),
    );
  }
}
