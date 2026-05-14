import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class RowOfDoneItemPaid extends StatelessWidget {
  const RowOfDoneItemPaid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            height: size.height * 0.050,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              borderRadius: BorderRadius.circular(RadiusManager.r10),
            ),
            child: Center(
              child: Text(
                textDirection: TextDirection.rtl,
                S.of(context).successPaidDebt,
                style: Styles.textStyle16,
              ),
            ),
          ),
        ),
        SizedBox(width: WidthManager.w10),
        Icon(
          Icons.check_circle_outline,
          color: ColorManager.primaryColor,
          size: FontManager.font30,
        ),
      ],
    );
  }
}
