import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_icon_button_customer.dart';
import 'package:flutter/material.dart';

class ColumnCustomerIcons extends StatelessWidget {
  const ColumnCustomerIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomIconButtonCustomer(
              onpressed: () {},
              color: ColorManager.rubyRedColor,
              iconData: Icons.delete,
            ),
            CustomIconButtonCustomer(
              onpressed: () {},
              color: ColorManager.primaryColor,
              iconData: Icons.edit,
            ),
          ],
        ),
      ],
    );
  }
}
