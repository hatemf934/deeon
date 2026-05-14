import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/calender_text_feild.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:deeon/generated/l10n.dart';
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
          validator: (value) => FormValidate().validateFullName(value, context),
          labelText: S.of(context).nameCustomer,
          hintText: S.of(context).customerNameHint,
        ),
        SizedBox(height: HeightManager.h15),
        TextFeildCustomer(
          controller: phoneController,
          validator: (value) => FormValidate().validatePhone(value, context),
          labelText: S.of(context).customerPhoneLabel,
          hintText: S.of(context).customerPhoneHint,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: HeightManager.h15),
        CalenderTextFeild(dataController: dateController),
      ],
    );
  }
}
