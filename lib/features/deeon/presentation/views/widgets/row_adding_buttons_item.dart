import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/adding_items.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/material.dart';

class RowAddingButtonsItems extends StatelessWidget {
  const RowAddingButtonsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AddingItems(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.060,
          width: MediaQuery.of(context).size.width * 0.60,
          child: TextFeildCustomer(
            onChanged: (v) {},
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return TextValidateManager.fieldIsRequired;
              }
              return null;
            },
            labelText: TextManger.itemName,
            hintText: TextManger.itemName,
          ),
        ),
      ],
    );
  }
}
