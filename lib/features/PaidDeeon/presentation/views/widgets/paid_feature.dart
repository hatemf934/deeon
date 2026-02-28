import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/row_of_done_item_paid.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/row_paid_details.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:flutter/material.dart';

class PaidFeature extends StatelessWidget {
  const PaidFeature({super.key, required this.deeonModel});
  final DeeonModel deeonModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.23,
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p16),
      decoration: BoxDecoration(
        color: ColorManager.secondryColor,
        borderRadius: BorderRadius.circular(RadiusManager.r20),
        boxShadow: [
          BoxShadow(
            color: ColorManager.blackColor.withAlpha(50),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RowOfPaidDetails(deeonModel: deeonModel),
          RowOfDoneItemPaid(),
        ],
      ),
    );
  }
}
