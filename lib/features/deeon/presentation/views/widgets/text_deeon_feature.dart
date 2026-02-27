import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class TextDeeonFeature extends StatelessWidget {
  const TextDeeonFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.itemName} : dddddddddddddddddddddddddddd",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.itemPrice} : 6000",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.quantity} : 5",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.dateAddedLabel} : 02-03-2025",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.totalAmount} : 30000",
            style: Styles.textStyle18.copyWith(
              color: ColorManager.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
