import 'package:deeon/features/debts/presentation/views/widgets/adding_items.dart';
import 'package:deeon/features/customers/presentation/view/widgets/text_feild_customer.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class RowAddingButtonsItems extends StatelessWidget {
  const RowAddingButtonsItems({
    super.key,

    required this.count,
    required this.onCountChanged,
    required this.nameItemController,
  });
  final int count;
  final Function(int) onCountChanged;
  final TextEditingController nameItemController;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AddingItems(countItem: count, onChanged: onCountChanged),
        SizedBox(
          width: size.width * 0.60,
          child: TextFeildCustomer(
            controller: nameItemController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return S.of(context).fieldIsRequired;
              }
              return null;
            },
            labelText: S.of(context).itemName,
            hintText: S.of(context).itemName,
          ),
        ),
      ],
    );
  }
}
