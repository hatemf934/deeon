import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/row_adding_buttons_item.dart';
import 'package:deeon/features/home/presentation/view/widgets/calender_text_feild.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/material.dart';

class BodyOfShowButtonSheetDeeon extends StatelessWidget {
  const BodyOfShowButtonSheetDeeon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: PaddingManager.p16,
        vertical: PaddingManager.p8,
      ),
      child: Column(
        children: [
          Text(
            TextManger.addNewDeeon,
            style: Styles.textStyle30.copyWith(
              color: ColorManager.primaryColor,
            ),
          ),
          Spacer(),
          RowAddingButtonsItems(),
          Spacer(),
          TextFeildCustomer(
            onChanged: (v) {},
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return TextValidateManager.fieldIsRequired;
              }
              return null;
            },
            labelText: TextManger.itemPrice,
            hintText: TextManger.itemPrice,
          ),
          Spacer(),
          CalenderTextFeild(onChangedDate: (onChangedDate) {}),
          Spacer(),
          CustomElevatedButton(
            onPressed: () {},
            text: TextManger.addDeeon,
            // onPressed: () {
            //   if (formkey.currentState!.validate()) {
            //     final customer = CustomerModel(
            //       nameCustomer: name!,
            //       phoneNumber: phone!,
            //       date: date!,
            //     );
            //     onAddCustomer(customer);
            //     Navigator.pop(context);
            //   }
            // },
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
