import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SwtichDarkTheme extends StatelessWidget {
  const SwtichDarkTheme({
    super.key,
    required this.color,
    required this.iconData,
    required this.text,
    this.isDarkMode = false,
  });
  final Color color;
  final IconData iconData;
  final String text;
  final bool isDarkMode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      height: MediaQuery.of(context).size.height * 0.09,
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
              Icon(iconData, color: ColorManager.nightStay),
              isDarkMode
                  ? Switch(
                      value: true,
                      onChanged: (value) {},
                      activeThumbColor: ColorManager.primaryColor,
                      activeTrackColor: ColorManager.activeColorSwitch,
                    )
                  : Container(),

              Text(
                text,
                style: Styles.textStyle18.copyWith(
                  color: ColorManager.nightStay,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
