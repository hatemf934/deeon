import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:flutter/material.dart';

class TextDeeonFeature extends StatelessWidget {
  const TextDeeonFeature({super.key, required this.deeonModel});
  final DeeonModel deeonModel;
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
            "${TextManger.itemName} : ${deeonModel.nameItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.itemPrice} : ${deeonModel.priceItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.quantity} : ${deeonModel.countItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.dateAddedLabel} : ${deeonModel.dateDeeon}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            "${TextManger.totalAmount} : ${deeonModel.countItem * deeonModel.priceItem}",
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
