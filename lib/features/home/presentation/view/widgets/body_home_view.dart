import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/column_customer_details.dart';
import 'package:deeon/features/home/presentation/view/widgets/column_customer_icons.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_view_customer_feature.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListViewCustomerFeature();
    // Center(
    //   child: Text(TextManger.noFoundDeeon, style: Styles.textStyle25),
    // );
  }
}

class CustomerFeature extends StatelessWidget {
  const CustomerFeature({super.key});

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
        children: [ColumnCustomerIcons(), ColumnCustomerDetails()],
      ),
    );
  }
}
