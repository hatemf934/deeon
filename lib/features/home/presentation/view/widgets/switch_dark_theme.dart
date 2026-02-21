import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class SwtichDarkTheme extends StatelessWidget {
  const SwtichDarkTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: ColorManager.blackColor,
      color: ColorManager.deepTeal,
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
            Icon(Icons.nights_stay, color: ColorManager.nightStay),
            Switch(
              value: true,
              onChanged: (value) {},
              activeThumbColor: ColorManager.primaryColor,
              activeTrackColor: ColorManager.activeColorSwitch,
            ),

            Text(
              TextManger.darkMode,
              style: Styles.textStyle18.copyWith(color: ColorManager.nightStay),
            ),
          ],
        ),
      ),
    );
  }
}
