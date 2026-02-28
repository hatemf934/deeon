import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/text_details_deeon.dart';
import 'package:flutter/material.dart';

class RowOfPaidDetails extends StatelessWidget {
  const RowOfPaidDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "المجموع : 30000",
          style: Styles.textStyle25.copyWith(
            color: ColorManager.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextDetailsDeeon(titleText: "كيبورد"),
              TextDetailsDeeon(titleText: "المبلغ : 60"),
              TextDetailsDeeon(titleText: "الكميه : 3"),
            ],
          ),
        ),
      ],
    );
  }
}
