import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class ColumnCustomerDetails extends StatelessWidget {
  const ColumnCustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "${TextManger.nameCustomer} : حاتم فتحي عادل",
          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),

        Text(
          "${TextManger.phoneNumber} : 345324565",

          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),
        Text(
          "${TextManger.dateAddedLabel} : 16/3/2004",
          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),
      ],
    );
  }
}
