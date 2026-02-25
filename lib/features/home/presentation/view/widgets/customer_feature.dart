import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/view/widgets/column_customer_details.dart';
import 'package:deeon/features/home/presentation/view/widgets/column_customer_icons.dart';
import 'package:flutter/material.dart';

class CustomerFeature extends StatelessWidget {
  const CustomerFeature({super.key, required this.customerModel});
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
        color: ColorManager.secondryColor,
        borderRadius: BorderRadius.circular(RadiusManager.r20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ColumnCustomerIcons(),
          ColumnCustomerDetails(customerModel: customerModel),
        ],
      ),
    );
  }
}
