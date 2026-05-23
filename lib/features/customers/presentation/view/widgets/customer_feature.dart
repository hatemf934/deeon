import 'package:deeon/constant.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/debts/data/model/deeon_model.dart';
import 'package:deeon/features/debts/presentation/views/deeon_view.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/features/customers/presentation/view/widgets/column_customer_details.dart';
import 'package:deeon/features/customers/presentation/view/widgets/column_customer_icons.dart';
import 'package:deeon/features/customers/presentation/view/widgets/show_model_button_sheet_customer.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CustomerFeature extends StatelessWidget {
  const CustomerFeature({
    super.key,
    required this.customerModel,
    required this.index,
  });
  final CustomerModel customerModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async {
        if (!Hive.isBoxOpen("$deeonBox${customerModel.id}")) {
          await Hive.openBox<DeeonModel>("$deeonBox${customerModel.id}");
        }
        if (!Hive.isBoxOpen("$paidDeeonBox${customerModel.id}")) {
          await Hive.openBox<DeeonModel>("$paidDeeonBox${customerModel.id}");
        }
        Navigator.pushNamed(context, DeeonView.id, arguments: customerModel);
      },

      child: Container(
        height: size.height * 0.20,
        width: size.width * 0.90,
        decoration: BoxDecoration(
          color: ColorManager.secondryColor,
          borderRadius: BorderRadius.circular(RadiusManager.r20),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: PaddingManager.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnCustomerDetails(customerModel: customerModel),
              ColumnCustomerIcons(
                onPressedEdit: () => showModelButtonSheetCustomer(
                  context,
                  customer: customerModel,
                ),
                index: index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
