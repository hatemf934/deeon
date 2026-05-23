import 'package:deeon/core/helpers/is_arabic.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class ColumnCustomerDetails extends StatelessWidget {
  const ColumnCustomerDetails({super.key, required this.customerModel});
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).nameCustomer} : ${customerModel.nameCustomer}",
            style: isArabic()
                ? Styles.textStyle18.copyWith(color: ColorManager.blackColor)
                : Styles.textStyle14.copyWith(color: ColorManager.blackColor),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).phoneNumber} : ${customerModel.phone}",
            style: isArabic()
                ? Styles.textStyle18.copyWith(color: ColorManager.blackColor)
                : Styles.textStyle14.copyWith(color: ColorManager.blackColor),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            "${S.of(context).dateAddedLabel} :  ${customerModel.date}",
            style: isArabic()
                ? Styles.textStyle18.copyWith(color: ColorManager.blackColor)
                : Styles.textStyle14.copyWith(color: ColorManager.blackColor),
          ),
        ],
      ),
    );
  }
}
