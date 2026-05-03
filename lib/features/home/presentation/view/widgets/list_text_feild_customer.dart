import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/calender_text_feild.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTextFeildCustomer extends StatelessWidget {
  const ListTextFeildCustomer({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.dateController,
  });
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFeildCustomer(
          controller: nameController,
          validator: (value) => FormValidate().validateFullName(value),
          labelText: TextManger.customerNameLabel,
          hintText: TextManger.customerNameHint,
        ),
        SizedBox(height: HeightManager.h15),
        TextFeildCustomer(
          controller: phoneController,
          validator: (value) => FormValidate().validatePhone(value),
          labelText: TextManger.customerPhoneLabel,
          hintText: TextManger.customerPhoneHint,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: HeightManager.h15),
        CalenderTextFeild(dataController: dateController),
      ],
    );
  }
}
