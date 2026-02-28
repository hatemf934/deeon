import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/text_details_deeon.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:flutter/material.dart';

class RowOfPaidDetails extends StatelessWidget {
  const RowOfPaidDetails({super.key, required this.deeonModel});
  final DeeonModel deeonModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              TextManger.total,
              style: Styles.textStyle25.copyWith(
                color: ColorManager.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${deeonModel.countItem * deeonModel.priceItem}",
              style: Styles.textStyle25.copyWith(
                color: ColorManager.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextDetailsDeeon(titleText: deeonModel.nameItem),
              TextDetailsDeeon(
                titleText: "${TextManger.price} : ${deeonModel.priceItem}",
              ),
              TextDetailsDeeon(
                titleText: "${TextManger.quantity} :${deeonModel.countItem}",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
