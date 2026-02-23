import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class ShowDialogIcons extends StatelessWidget {
  const ShowDialogIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: WidthManager.w40,
          height: HeightManager.h4,
          decoration: BoxDecoration(
            color: ColorManager.greyolor,
            borderRadius: BorderRadius.circular(RadiusManager.r20),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.cancel_outlined,
                color: ColorManager.witheColor,
                size: FontManager.font30,
              ),
            ),
            Text(
              TextManger.modifyText,
              style: Styles.textStyle22.copyWith(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline,
                color: ColorManager.rubyRedColor,
                size: FontManager.font30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
