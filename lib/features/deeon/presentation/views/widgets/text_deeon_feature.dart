import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/generated/l10n.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).itemName} : ${deeonModel.nameItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).itemPrice} : ${deeonModel.priceItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).quantity} : ${deeonModel.countItem}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).dateAddedLabel} : ${deeonModel.dateDeeon}",
            style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).totalAmount} : ${deeonModel.countItem * deeonModel.priceItem}",
            style: Styles.textStyle18.copyWith(
              color: ColorManager.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          deeonModel.isDiscount
              ? Text(
                  overflow: TextOverflow.ellipsis,
                  "${S.of(context).totalDiscount} : ${deeonModel.discountPrice}",
                  style: Styles.textStyle18.copyWith(
                    color: ColorManager.rubyRedColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
