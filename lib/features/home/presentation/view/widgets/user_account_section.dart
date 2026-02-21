import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class UserAccountSection extends StatelessWidget {
  const UserAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: PaddingManager.p40),
      decoration: BoxDecoration(
        color: ColorManager.drawerAccountColor,
        border: Border(bottom: BorderSide(color: ColorManager.witheColor)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: WidthManager.w100,
            height: HeightManager.h100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManager.witheColor,
                width: WidthManager.w3,
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorManager.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/images/blank-profile-picture-973460_1280.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: HeightManager.h15),
          Text(
            "حاتم فاحي عادل",
            textAlign: TextAlign.center,
            style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            "hatemf934@gmail.com",
            textAlign: TextAlign.center,
            style: Styles.textStyle15,
          ),
        ],
      ),
    );
  }
}
