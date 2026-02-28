import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class RowOfDoneItemPaid extends StatelessWidget {
  const RowOfDoneItemPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.check_circle_outline,
          color: ColorManager.primaryColor,
          size: FontManager.font30,
        ),
        SizedBox(width: MediaQuery.of(context).size.height * 0.020),
        Container(
          height: MediaQuery.of(context).size.height * 0.050,
          width: MediaQuery.of(context).size.height * 0.24,
          decoration: BoxDecoration(
            color: ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(RadiusManager.r10),
          ),
          child: Center(
            child: Text(
              textDirection: TextDirection.rtl,
              TextManger.scussesPaidDeeon,
              style: Styles.textStyle16,
            ),
          ),
        ),
      ],
    );
  }
}
