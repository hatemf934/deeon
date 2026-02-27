import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';

class ColumnCustomerDetails extends StatelessWidget {
  const ColumnCustomerDetails({super.key, required this.customerModel});
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          "${TextManger.nameCustomer} : ${customerModel.nameCustomer}",
          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),

        Text(
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          "${TextManger.phoneNumber} : ${customerModel.phoneNumber}",
          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),
        Text(
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          "${TextManger.dateAddedLabel} :  ${customerModel.date}",
          style: Styles.textStyle18.copyWith(color: ColorManager.blackColor),
        ),
      ],
    );
  }
}
